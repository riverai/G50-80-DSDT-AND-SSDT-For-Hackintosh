# G50-80-DSDT-AND-SSDT-For-Hackintosh
联想G50-80笔记本的Hackintosh安装 

这并不是我正在使用的的笔记本，这是一次友情帮助。

##GPPR方法报错问题


GPPR方法引用了SGOP，编译器错误的猜了一个参数。

用"grep SGOP *.dsl"可以发现它存在于另外一个SSDT表中，而且是两个参数，所以直接指定一个正确配置参数的refs.txt，就可以正确反编译GPPR方法。该文件和使用示例你可以在该项目文件夹中找到。


**External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj, 2)
**

重新反编译
iasl -da -dl -fe refs.txt


反编译器会把一条新的外部引用移动到所有外部开头，你需要把这条移动到SSDT5所有的其它外部声明的最后。再重新编译就可以发现所有错误已经消除。而除了SSDT5，其他DSDT和SSDT都不需要这条外部声明，移除它...



**另外一种方法是直接删除这个方法
**


into method label GPPR replace_content begin //nothing end;
into definitionblock code_regex
External.*_SB_\.PCI0\.PEG0\.PEGP\.SGPO,.*MethodObj.* remove_matched;

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

##USB  0X6D 

究竟是6D还是0D，你自己看看就知道。搜索**_PRW **

##安装引导问题

这个机器比较诡异：

第一 虽然内置DVMT是128M，但是你依然需要去掉苹果对这大小的检测。因此这就导致你在正确驱动显卡之前需要用clover 修改kext的 on the fly功能，也就是说，第一次尝试正确驱动显卡时应该without cache 启动，正确驱动后再重建缓存。

至少我上次测试的时候是如此，你也可以再次自行探索。


第二 

