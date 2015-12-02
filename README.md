# G50-80-DSDT-AND-SSDT-For-Hackintosh
联想G50-80笔记本的Hackintosh安装 

这并不是我正在使用的的笔记本，这是一次友情帮助。

##GPPR方法报错


GPPR方法引用了SGOP，编译器错误的猜了一个参数。

用"grep SGOP *.dsl"可以发现它存在于另外一个SSDT表中，而且是两个参数，所以直接指定一个正确配置参数的refs.txt，就可以正确反编译GPPR方法。该文件和使用示例你可以在该项目文件夹中找到。


**External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj, 2)**

重新反编译
iasl -da -dl -fe refs.txt


反编译器会把一条新的外部引用移动到所有外部开头，你需要把这条移动到SSDT5所有的其它外部声明的最后。再重新编译就可以发现所有错误已经消除。而除了SSDT5，其他DSDT和SSDT都不需要这条外部声明，移除它...



**另外一种方法是直接删除这个方法**


into method label GPPR replace_content begin //nothing end;

into definitionblock code_regex

External.\*\_SB_\.PCI0\.PEG0\.PEGP\.SGPO,.\*MethodObj.* 

remove_matched;

两种方法都由Rehabman提出和提供。

##亮度按键额外修改

安装PS2驱动之后，一般来说你可以用SHFIT+F2/F3和右边的FN+F5/F6调节亮度。

如果你认为有必要，可以再打上这个补丁



into method label _Q12 replace_content

begin

// Brightness Down\n

    Notify (PS2K, 0x10)\n
    
end;

into method label _Q11 replace_content

begin

// Brightness Up\n

    Notify (PS2K, 0x20)\n
    
end;

这是从[这里](http://www.tonymacx86.com/el-capitan-laptop-guides/171080-guide-lenovo-g50-80-el-capitan.html)得来的,只不过我在使用后发现他把亮度增加与减小弄反了，于是我再把它交换了一下，希望这次没错。

##电池代码

电池代码已经提到给了PCBETA热心版主的Github，[派奇源](https://github.com/Yuki-Judai/dxxs-DSDT-Patch)

直接在Maciasl添加

https://raw.github.com/Yuki-Judai/dxxs-DSDT-Patch/master

电池代码存在部分瑕疵，最好你干脆别去看它，至少别指望我再维护，没空.......

##USB  0X6D 

究竟是6D还是0D，你自己看看就知道。搜索 **_PRW** 。


##显卡相关的安装引导问题

这个机器比较诡异：

**第一 Windows10 DVMT检测是不可靠的，你依然需要去掉苹果对这大小的检测**


因此这就导致你在正确驱动显卡时，必须用clover 修改kext的 patch on the fly功能。根据经验，第一次尝试正确驱动显卡时应该without cache 启动，正确驱动后再重建缓存。同样，这里你可以重新测试。


多数时候，不要指望联想留给你的DVMT是足够的，足够不开kext修改。



**第二 安装引导**


10.10.5安装方法

不用使用任何IG..ID，Less is more.这样做的目的是防止系统加载显卡完整驱动，避开一切可能的问题。而且，去除DVMT检测的Ptach在安装的时候也别指望生效。

这样安装进入桌面以后，使用正确的ID ，然后带上Disable DVMT检测的Patch选择Without Cache进入系统，这选项与clover配置文件设置No cache的效果是相同的。

10.11.X安装方法


不用使用任何IG..ID，Less is more.这样做的目的是防止系统加载显卡完整驱动，避开一切可能的问题。而且，去除DVMT检测的Ptach在安装的时候也别指望生效。

之后请参照[这里](http://bbs.pcbeta.com/viewthread-1653407-1-1.html)

“
4. 这一步比较怪异，虽然第二步开了显卡的KextsToPatch，但是我这是新安装好后没效果。
解决：1）设fakeid 进系统给 /S/L/E/AppleIntelBDWGraphicsFramebuffer.kext/Contents/MacOS/AppleIntelBDWGraphicsFramebuffer 打补丁，replace 4139c4763e with 4139c4eb3e，修复权限，cache后重启； 

2）此时不用设fakeid，可进系统，替换未打补丁的AppleIntelBDWGraphicsFramebuffer，修复权限，cache后重启；
3）ok，hd5500正常。

”




##启动与启动参数


**务必确保你使用的是最新版的Clover和它的自带驱动。**


可能你需要启动参数dart = 0，加上不会有什么坏处，我在测试时候发现几个问题，也许与此参数有关，没有进一步排除，有待测试。

###如果你在用10.10.5

先进Windows再重启进入Mac，在关机以前都不要求先进Windows再进Mac。
这是为防止冻屏（屏幕画面卡住）。

**对于10.11，应当不存在这个问题，推荐升级**。


###r69插着U盘重启会导致你丢失Clover的第一启动顺序而直接进入Windows**

反正很诡异，如果你有这问题，不要那样做。

###内置网卡声卡

~~内置声卡没听说有人能用APPLEHDA，只能用万能驱动。
~~

现在已经看到AppleHDA的仿冒驱动了，等待更新，现在没空。


内置网卡无解，而且那个蓝牙还会给你添麻烦，可以考虑暂时拔掉网卡，之后再删除蓝牙驱动。


##提取DSDT的时机



在一个你打算长期使用的BIOS设置基础上用Ubuntu系统提取。
比如：

USB应该设置到SmartAuto（如果有的话）

显卡应该设置到独立显卡**Discrete graphics**

这之后再用**UBuntu提取**，不要使用Clover，也不要使用Windows。


##SSDT关闭独显

在SSDT5，直接在_INI 调用_OFF 。



##SMBIOS
 

SMBIOS请去网上搜索Broadwell可用的SMBIOS参数，也可以用MBA6.2。

##BIOS版本

我使用的是r69版本，地球上大概是找不到最自由的r40版本的。

联想美国官网可以下载到BIOS刷新程序(包括r69 修改网址然后用迅雷)，BIOS设置中可以设置是否允许降级，剩下的，需要你自己选择。

## CPU 微码升级

Broadwell CPU存在内部错误，升级微码是一个可选的操作。

那么你可以：

1 查看最新的BIOS，查看是否可以升级微码，然后再将级或者直接在新版基础上重新Hackintosh。这需要有人测试。

2 等待Linux微码升级程序释出。

3 无视


##The End



