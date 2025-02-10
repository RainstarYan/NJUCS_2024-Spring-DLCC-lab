# NJUCS_2024_Spring_DLCC
# NJUCS_2024春_数字逻辑与计算机组成课程实验 NJUCS 2024 Digital Logic and Computer Composition - Course Experiment

## 本仓库为2024年春季学期南京大学计算机学院 数字逻辑与计算机组成课程实验的记录内容，包含六次课程实验的实验手册、全部circ源文件、部分思考题实现的circ源文件、实验报告及实验测试过程中使用的部分测试集，以及一篇简短的课程实验入门工具指南。投放的内容已经通过当年课程实验测试与线下验收，但部分实验报告存在瑕疵未得满分。
## This repository contains the documentation for the laboratory experiments of the Digital Logic and Computer Composition course offered by the School of Computer Science at Nanjing University during the Spring 2024 semester. It includes the lab manuals for six course experiments, all .circ source files, some .circ source files for the implementation of thought questions, lab reports, and a portion of the test sets used during the experimental testing process, as well as a brief introductory tool guide for the course experiments. The materials provided have passed the course's experimental tests and on-site validations for that year, although some lab reports contain imperfections and did not receive full marks.
# 查阅前务必阅读使用须知！！！
# Please be sure to read the usage instructions before accessing the materials!!!

## 使用须知 Instructions

### 由南京大学计算机学院开设的数字逻辑与计算机组成课程是面向计算机专业及计算机相关专业学生的必修课，主要基于RISCV指令集，讲授数字逻辑基础与计算机底层组成原理方面的知识。
### The Digital Logic and Computer Composition course, offered by the School of Computer Science at Nanjing University, is a compulsory subject for students majoring in computer science and related fields. It primarily focuses on the RISCV instruction set and imparts foundational knowledge in digital logic and the underlying principles of computer architecture.

### 为预防实验报告抄袭，没有给出实验报告的markdown版本，只给出pdf版本，但pdf无法在网页端直接查看。可以先下载到本地再查阅。
### To prevent plagiarism of lab reports, the markdown versions of the reports have not been provided; only the PDF versions are available. However, PDFs cannot be viewed directly on the web interface. It is recommended to download them to your local device for review.

### 1.分享原因  Why share
###### 南京大学计算机专业培养方案与众多其他学校一个很大的不同在于将数字逻辑和计算机组成两门课程合二为一，将课程内容稍作压缩整理作为一学期课程教授。这样设计的优点在于两门课程内容本质上衔接紧密，更有利于连贯理解和节省时间；但缺点在于由于课时压缩，会造成部分知识理解不透彻、不全面，讲授时为赶进度走马观花等现象。另外，本课程之外还设置了“数字逻辑与计算机组成实验”的纯实验课，开设在大二第一学期。相比于与现代硬件设计联系更紧密的数逻计组实验所使用的verilog-实际芯片体系，本课程为节省时间和降低入门难度，采用logisim-circ-虚拟机的实验体系，虽然学习曲线较为平缓，但logisim的原始连线、搭积木形式的实验组织形式在面对部分任务时bug重重、设计不够人性化，而且常常需要投入大量的无意义重复劳动（尤指32位寄存器、桶形移位器部分内容），也完全不利于debug和节省更多时间理解底层原理。因此为避免大家在某些任务上投入过多无意义重复劳动（这不意味着你可以不思考而直接抄袭，这对之后的后续课程是完全有害的），特此设置本仓库。
###### The computer science curriculum at Nanjing University distinguishes itself from many other institutions by combining the two courses of Digital Logic and Computer Composition into a single semester course, with the content slightly condensed and reorganized. The advantage of this design is that the two subjects are inherently closely linked, facilitating a more coherent understanding and saving time. However, the downside is that due to the compressed schedule, some knowledge may not be thoroughly or comprehensively understood, and the teaching may sometimes be rushed, leading to a superficial coverage of topics. Additionally, outside of this course, there is a dedicated lab course titled "Digital Logic and Computer Composition Lab," offered in the first semester of the sophomore year. Unlike the Verilog-actual chip system used in the Digital Logic and Computer Organization Lab, which is more closely related to modern hardware design, this course employs the Logisim-circ-virtual machine system to save time and reduce the entry barrier. Although the learning curve is gentler, the primitive wiring and building-block approach of Logisim can be bug-ridden and less user-friendly when tackling certain tasks, often requiring a significant amount of meaningless repetitive work (especially for the 32-bit register and barrel shifter sections), and is not conducive to debugging or saving time to understand the underlying principles. Therefore, to prevent excessive meaningless repetitive work on certain tasks (this does not mean you can copy without thinking, which is detrimental to subsequent courses), this repository has been established.

### 2.使用准则 Guidelines
#### 坚决禁止的行为 Strictly Prohibited Actions
未加任何思考直接复用实验源文件提交 
Submitting the experimental source file without any modification or thought.

抄袭或直接复用实验报告源文件提交 
Plagiarizing or directly reusing the source file of the experimental report for submission.


#### 不被推荐的行为 Behaviors That Are Not Recommended
在没有独立思考前，参考源文件照搬实现方案 
Referring to the source file and copying the implementation plan without independent thinking.

在没有完全理解实验内容前，试图参考源文件获得思路 
Attempting to gain ideas by referring to the source file before fully understanding the experimental content.

因抵触做实验而直接参考源文件中的内容 
Referring directly to the content in the source file out of aversion to conducting the experiment.

已经完成了前置实验，希望提前“推进”实验进度而在新版实验手册未公布的前提下借助本仓库超前赶实验（实验手册的发布往往小幅度提前于实验本身的进度，我们不鼓励过分超前“卷”的行为，况且在最新的实验手册发布前，参考本仓库的内容而完成实验很可能造成各种bug或问题） 
Having completed the preliminary experiments, attempting to “advance” the experimental progress by referring to this repository before the new experimental manual is released (the release of the experimental manual usually slightly precedes the actual experimental progress. We do not encourage the behavior of overly advancing or “out-competing” others. Moreover, completing the experiments by referring to the content of this repository before the latest experimental manual is released may likely cause various bugs or issues).


#### 被允许但责任自负的行为 Actions That Are Permitted But At Your Own Risk
使用与实验报告完全相同的格式 
Using the exact same format as the experimental report.

使用与实验报告完全相同的实现方案 
Using the exact same implementation plan as the experimental report.


#### 被允许且受欢迎的行为 Actions That Are Permitted and Encouraged
已经完成实验甚至通过验收，试图寻找更多可能的实现方案和思路 
Having completed the experiment and even passed the acceptance, attempting to seek more possible implementation plans and ideas.

已经独立完成绝大部分工作，但存在长时间无法解决的bug，借助本仓库debug 
Having independently completed the vast majority of the work but encountering bugs that have remained unresolved for a long time, using this repository to debug.

已经完全理解实验内容并有了自己的实现思路，但工作量过大并抵触无谓的连线工作 
Having fully understood the experimental content and already having your own implementation ideas, but feeling averse to the tedious wiring work due to the large amount of work involved.

已经基本形成了自己的思路和实现，但卡在某些步骤无法继续进行 
Having essentially formed your own ideas and implementation plans, but being stuck at certain steps and unable to proceed further.

已经多次独立尝试过完成实验，但多次受挫并试图寻求其他思路或发现自己思路中的问题 
Having made multiple independent attempts to complete the experiment but encountering repeated setbacks, and trying to seek alternative ideas or identify problems in your own approach.


### 3.警告 Warnings
实验内容每年虽有一致，但每次相比上次课程往往存在一些细节部分的调整，如果照搬实现，很有可能出现完全无法理解的bug！！！
实验报告的思考题内容每年都会做题目内容的更新，如果照搬非常容易被检测到抄袭！！！
实验报告后都附加了“仅作学习讨论使用，不得直接提交”的字样，禁止直接复制！！！
如果绝大部分参考本仓库内容（尤其是第三次实验之后），由于本仓库在网上直接公开，很有可能与他人参考本仓库的实现相似而无法通过查重！！！
仓库给出的实验手册可能存在未被发现的书写错误，不要完全依赖旧版实验说明，以老师给出的最新实验手册为准

Although the experimental content is consistent each year, there are often some minor adjustments compared to the previous course. If you directly copy the implementation, it is highly likely to result in bugs that are completely incomprehensible!
The content of the thought-provoking questions in the experimental report is updated every year. If you directly copy them, it is very easy to be detected as plagiarism!
The experimental reports are marked with “For study and discussion only, not to be submitted directly.” Direct copying is prohibited!
If you refer to the majority of the content in this repository (especially after the third experiment), since this repository is publicly available online, it is highly likely that your work will be similar to others who have also referred to this repository and thus fail the plagiarism check!
The experimental manual provided in the repository may contain undetected writing errors. Do not rely entirely on the old experimental instructions. Follow the latest experimental manual provided by the instructor.

### 4.其他 Tips
数逻计组的老师已经意识到了实验课程存在的问题，似乎正在寻求更多的解决办法。如果课程体系有革命性的更新，很可能本仓库的内容将完全无法适配。
如果在整体实验未开放前，想要提前了解完成本实验推荐使用的一些工具和技巧，可以查阅本仓库另一篇说明《数逻计组实验入门》。

The teachers of Digital Logic and Computer Organization have already become aware of the issues in the experimental courses and seem to be seeking more solutions. If there is a revolutionary update to the curriculum, it is highly likely that the content of this repository will no longer be compatible.
If you want to get an early understanding of the recommended tools and techniques for completing the experiments before the overall experiment is open, you can refer to another document in this repository titled “Introduction to Digital Logic and Computer Organization Experiments.”


# 欢迎在遵守使用准则的前提下，阅读或使用本仓库！预祝学习顺利~
# You are welcome to read or use this repository, provided that you follow the usage guidelines! I wish you a smooth and successful learning experience~

