# The CLEARSY Safety Platform Programming Handbook

## Introduction

This book provides an introduction to the [CLEARSY Safety Platform](https://www.clearsy.com/en/our-tools/clearsy-safety-platform/) (**CSSP** in short). The **CSSP** is being developed in order to compete  on the international scene of safety critical systems, 
with the key idea to lower development and certification costs.  Its  development is a collective effort being produced in-house 
during development but also on site all over the world during deployment  and exploitation, to obtain finally a safety, SIL4-ready 
product.

## Audience
This book is intended primarily as a textbook for post-graduates courses .  It is also appropriate for courses on formal methods 
in general and on (safety related) embedded systems.  The book assumes no prior knowledge of formal methods or of reasoning about 
programs.  However it assumes a previous exposure to logic and a basic ability to manipulate simple logic and set theoretic expressions. 
No prior knowledge of the modelling language, namely the B language, is required as language elements will be introduced when needed. 
Moreover, as project skeletons are automatically generated, being able to develop a full B project is not required: programming the 
**CSSP** requires one component (the user_logic operation) to be modified and possibly new components to be added.

## More about the CLEARSY Safety Platform

It is aimed at easing the development and the deployment of safety critical applications, up to SIL4.  It is made of an integrated 
software development environment (IDE) and  a hardware platform that natively integrates safety principles. It relies on the smart 
integration of formal methods (including mathematical proof), redundant code generation and compilation, and a hardware platform that 
ensures a safe execution of the software.
The B formal method is at the core of the software development process. Mathematical proof ensures that the software complies with its 
specification (functional model) and guarantees the absence of programming errors while avoiding unit testing and integration testing. 
Moreover only one functional model is used to produce automatically the redundant software, avoiding the need tohave two independent 
teams for its development. The safety principles are built-in, both at software level and at hardware level (2oo2 hardware, 4oo4 software). 
They are out of reach of the developer who cannot alter them. The detection of any divergent behaviour among the two processors 
(PIC32 micro-controllers) and the four instances of the software is handled by the platform. The safety verification includes cross 
checks between software instances and between micro-controllers, memory integrity, ability to control outputs, etc.

## Hardware support

The  *CSSP*  Starter  kits  SK0  and  SK1  are  only  for  education  and  industrial  prototyping respectively. If the software 
generated by the Atelier CSSP is the one that will be running on the final safety critical system, the electronics of SK0 and SK1 
do not comply with SIL3/ SIL4 requirements. One of the reasons is that such electronics would largely increase the board prices and 
it would be clearly against the dissemination of the technology. However the *CSSP* Core Module, 
a daughter board to beplugged on a motherboard with digital IOs, will be SIL4-ready and usable in a real safety critical application.


## Terminology

*2oo2*, *4oo4* put for "2 out of 2" and "4 out of 4", are consensus voting principles used for safety architectures, where all processors
have to obtain the results to initiate a potentially dangerous action.

*Atelier B* is an Integrated development environment (IDE) supporting the B method and the B language for software development, and 
Event-B for system-level analysis.  Atelier **CSSP** is Atelier B extended withredundant code generator toolchain, bootloader, and a new 
project type (**CSSP** project).

*B Method* is a method of software development based on the B formal language, used in the development of computer software. It was originally 
developed in the 1980s. B is related to the Z notation and supports development of programming language code from specifications.

*Safety* refers to the control of recognized hazards in order to achieve an acceptable level of risk.

*SIL* put for Safety Integrity Level, is a relative level of risk-reduction provided by a safety function.  Its range is usually 
between 0 and 4,  SIL4 being the most dependable and used for situations where people could die.

