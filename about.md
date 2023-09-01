---
layout: page
title: Syllabus
description: >-
    Course policies and information.
---

# Syllabus
{:.no_toc}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

---

*Note: this syllabus may change in response to changing public health circumstances or university protocols.*

## Overview

Welcome to STA 712! This course covers *generalized linear models* (GLMs), which generalize the linear regression models you learned in STA 612 to other types of response variables. We will cover both the theory and applications of generalized linear models, and the computational mathematics needed to fit these models. Throughout the semester you will work with real data from a variety of sources, and we will emphasize reproducibility, checking assumptions, and thoughtful data analysis.

**Learning goals:** By the end of this class, you will be able to

* Use core GLM theory to investigate models with different response variables
* Fit and assess generalized linear models on data to answer real research questions
* Connect GLMs to topics in the broader statistical landscape (e.g. linear regression, classification, GAMs, neural networks)
* Independently learn and apply new statistical topics

**Time:** MWF 2:00 -- 2:50

**Location:** Manchester 17

**Professor:** Ciaran Evans

**Office:** Manchester 329

**Email:** evansc@wfu.edu *(please allow 24 hours for email responses)*

## Course materials

**Laptops:** You will need a laptop for this class, and you will sometimes need it during class. I recommend bringing your laptop each day.

**Textbook:** *Generalized Linear Models with Examples in R*, by Dunn and Smyth. This book is very readable and has lots of examples and code. We will supplement the book material with additional theory in class.

**Supplementary text:** For an intuitive explanation of GLMs, with additional examples and case studies, I recommend [Beyond MLR](https://bookdown.org/roback/bookdown-BeyondMLR/): Beyond Multiple Linear Regression, Roback and Legler. The textbook is available, *free*, at the link provided.

**Software:** We will be using the statistical software [R](https://cran.r-project.org/), through the interface [RStudio](https://posit.co/download/rstudio-desktop/) for working with data and statistical modeling. You will need to download R and RStudio onto your laptop.


## Getting help

If you have any questions about the course (or statistics in general!), please don't hesitate to ask! I am available during office hours, by appointment, or via email. If you're emailing about an issue with R, please include a minimum working example (everything I need to reproduce the issue you encountered). 

Keep in mind that debugging software issues can take time, so make sure to start the assignments early in case you run into problems.

**Office hours:** Drop-in office hours (no appointment needed) will be held

* Wednesday 9:30-10:30am
* Thursday 10-10:45am and 1-2pm


## Course policies

### Communication

While course materials will be posted on the course website, I will also send messages and announcements through Canvas. Please make sure your Canvas account is set up so that you receive emails when I send these messages.

### Participation and illness

Attendance is important, and you are expected to participate actively in class and group activities and discussions. However, your health, and the health of your peers, is crucial. If you are ill, please do not come to class or office hours. All class materials will be posted online, and I can meet with you one-on-one when you have recovered. If you need office hours when you are ill, I am happy to communicate via email or Zoom. Extensions on coursework may be granted on an individual basis under extenuating circumstances.

### Extensions

You have a bank of **5** extension days, which you may use over the course of the semester. You may use either 1 or 2 extension days for a homework assignment, challenge assignment, or data analysis project (making the assignment due either 24 or 48 hours after the original due date). If you plan to use an extension, you must email me before the assignment is due.

Extensions in extenuating circumstances, such as family emergencies, will be handled separately and on an individual basis.

### Accessibility

If you require accommodations due to a disability or other learning differences, contact the Center for Learning, Access, and Student Success  at 336-758-5929 or class@wfu.edu as soon as possible to better ensure that such accommodations are implemented in a timely fashion. Please feel free
to contact me, and I will be happy to discuss any necessary accommodations. I always like
to know how to help my students feel comfortable and successful in our course.

**Scent-free zone:** The 3rd floor of Manchester is a scent-free zone. Please refrain from wearing perfume, cologne, scented lotion, body spray, and all other scented products if visiting the third floor.

### Mental health

All of us benefit from support during times of struggle. You are not alone. There are many helpful
resources available on campus and an important part of the college experience is learning how to ask
for help. Asking for support sooner rather than later is often helpful.

If you or anyone you know experiences any academic stress, difficult life events, or feelings like anx-
iety or depression, we strongly encourage you to seek support. The University Counseling Center is here to help: call 336-758-5273 or visit their website at [https://counselingcenter.wfu.edu/](https://counselingcenter.wfu.edu/).

If you or someone you know is feeling suicidal or in danger of self-harm, call someone immediately,
day or night:
Counseling Center: 336-758-5273

If the situation is life threatening, call the police:
911 or 336-758-5911 (campus police)

### Academic integrity

I expect and require that students conduct themselves in a manner according to the Wake Forest standard
for academic integrity. Cheating or academic dishonesty of any kind will not be tolerated.
For other information on these matters, please consult the [Code of Conduct](https://static.secure.wfu.edu/files/pdf/students/judicial-handbook.pdf). For Academic issues please
see the [College Judicial System](https://studentconduct.wfu.edu/the-judicial-council/).

**Sharing code and resources:**
* There are many online resources for sharing code, such as StackOverflow. Unless otherwise stated, you are free (and encouraged!) to use these resources for help on labs and assignments. However, you must **explicitly cite** where you have obtained the code (both code you used directly and code used as an inspiration). Any reused code that is not explicitly cited will be treated as plagiarism.

* Unless otherwise stated, you are encouraged to collaborate with other students on homework assignments (not projects or exams). If you do so, please acknowledge your collaborator(s) at the top of your assignment. Failure to acknowledge collaborators may result in a grade of 0. You may not copy code and/or answers directly from another student. If you copy someone else's work, both parties may receive a grade of 0.

* Rather than copying someone else's work, ask for help. You are not alone in this course!

### Professionalism

Please refrain from using your laptop, tablet, and phone for anything other than coursework during class.

## Course components

### Homework assignments

This course includes regular homework assignments to give you practice with the material and help your learning, and so I can give you feedback on your work. These homework assignments will be graded purely on completion; you will receive credit for an assignment if you have completed all questions, submitted the assignment by the due date, and made a good-faith effort to answer each question using course material. 

You are welcomed, and encouraged, to work with each other on homework assignments, but you must turn in
your own work. If you copy someone else’s work, both parties may receive a 0 for the assignment grade. If you work with someone else, you must write the name of your collaborator(s) on
your homework.

### Challenge assignments

In addition to regular homework, there are four *challenge assignments* available. These require you to independently learn something about a topic related to GLMs, but which is not part of the core course content. The purpose of challenge assignments is to cover cool material which we don't have time to fully cover in class, and to give you practice with independent learning.

Unlike regular homework, challenge assignments will be graded on a Mastered / Not yet mastered scale. I will judge you to have "Mastered" an assignment if your work is of high enough quality that you could use it to teach the topic to another student. I will give you feedback on your challenge assignments, and you may *resubmit* each "Not yet mastered" assignment once. You must resubmit your work within one week of receiving feedback.

You are welcomed, and encouraged, to work with each other on challenge assignments, but you must turn in
your own work. If you copy someone else’s work, both parties may receive a 0 for the assignment grade. If you work with someone else, you must write the name of your collaborator(s) on
your homework.

**Due dates:** All challenge assignments are available at the beginning of the semester. Any challenge assignments you choose to submit must be turned in by **Friday, November 10**.

### Data Analysis Projects

Statistics and data science in the real world often involves in-depth analysis of complex datasets to answer one or more high-level research questions, and communicating these results to a wider audience. Projects provide an opportunity to develop these skills, and apply the tools you have learned in class and practiced on homework.

There will be two data analysis projects in this course. You will be asked to answer one or more research questions with data visualizations and statistical models. You will submit a written report describing your analysis and conclusions.

Like challenge assignments and exams, projects will be graded on a Mastered / Not yet mastered scale. I will give you feedback on your projects, and you may *resubmit* each "Not yet mastered" project once. You must resubmit your work within one week of receiving feedback. Further instructions will be provided with each project.

### Semester Research Project

No class can cover all possible topics, and in your future careers it is highly likely you will need to use a statistical method you have not learned in class. Furthermore, statistical practice changes over time, and you will need to engage with current statistical literature to stay up-to-date. Finally, completing extended projects requires auxilliary skills that are not always emphasized in class, such as group work, literature reviews, code management, and written and oral communication.

To help you develop these skills, you will work in groups to complete a semester-long research project. This project will require your group to learn about a *new* statistical topic, apply it to real data of your choice, write a report, and give a 50-minute presentation towards the end of the semester.

In addition to these final deliverables, there will be several intermediate check-points along the way, requiring you to submit initial proposals and meet with Dr. Evans to discuss your research plans. The final written report will be graded on a Mastered / Not yet mastered scale. All other project components (check-points and presentation) will be graded on completion (you receive credit for a good-faith effort).

Your semester research project will receive one of the following three grades:

* *Meets all expectations:* You master the final report and complete all check-points and the final presentation
* *Meets some expectations:* You master the final report and complete the final presentation. Other check-points are not all complete.
* *Does not meet expectations:* You do not master the final report, and/or do not complete the final presentation.

If your group does not master the final written report for the semester research project, you will have the opportunity to re-submit a revised report during finals week.

**Extensions:** Your individual bank of 5 extensions days may *not* be used for the semester project. Instead, each group will receive a bank of **3** days to be used exclusively for the project. You may apply 1--2 days to any part of the assignment *except* for the final presentation.

## Important semester due dates

The following dates are tentative and subject to change:

* Semester research project, Week 1 checkpoint: Monday, September 4
* Semester research project, Week 4 checkpoint: Friday, September 22
* Data analysis project 1, report: Friday, September 29
* Semester research project, Week 8 checkpoint: Friday, October 20
* Data analysis project 2, SAP: Friday, October 27
* Last day to submit challenge assignments: Friday, Nov 10
* Semester research project, Week 12 checkpoint: Friday, November 17
* Data analysis project 2, report: Tuesday, November 21
* Semester research project, report and slides: Friday, December 1
* Semester research project, presentations: week 14/15

## Grading

My goal in this course is to help you learn about generalized linear models and related topics, but it isn't clear that a focus on grades helps students learn; in fact, focusing on grades can detract from the learning process. However, we live in a world where some form of grading is necessary, so I have tried to create a grading system which de-emphasizes grades as much as possible. When assigning grades, I believe that

* Homework should be an opportunity to *practice* the material. It is ok to make mistakes when practicing, as long as you make an honest effort
* Errors are a good opportunity to learn and revise your work
* Partial credit and weighted averages of scores make the meaning of a grade confusing. Does an 85 in the course mean you know 85% of everything, or everything about 85% of the material?

To that end, in this course

* I will give you feedback on every assignment
* Homework is graded on completeness and effort, not correctness
* All other assignments are graded on a mastery basis
* If you haven't yet mastered something, you get to try again!

Your final grade in the course simply reflects how much of the course content you have mastered and completed. The list below shows what you need to do to receive each grade. There will be *N* homework assignments.

To get a **C-** in the course:

* Receive credit for *N-3* homework assignments
* Master one data analysis project, OR receive *Meets some expectations* on the semester research project

To get a **C** in the course:

* Receive credit for *N-3* homework assignments
* Master one data analysis project, OR receive *Meets some expectations* on the semester research project
* Master one challenge assignment

To get a **C+** in the course:

* Receive credit for *N-3* homework assignments
* Master one data analysis project, OR receive *Meets some expectations* on the semester research project
* Master two challenge assignments

To get a **B-** in the course:

* Receive credit for *N-2* homework assignments
* Master two data analysis projects, OR master one data analysis project and receive *Meets some expectations* on the semester research project

To get a **B** in the course:

* Receive credit for *N-2* homework assignments
* Master two data analysis projects, OR master one data analysis project and receive *Meets some expectations* on the semester research project
* Master one challenge assignment

To get a **B+** in the course:

* Receive credit for *N-2* homework assignments
* Master two data analysis projects, OR master one data analysis project and receive *Meets some expectations* on the semester research project
* Master two challenge assignments

To get an **A-** in the course:

* Receive credit for *N-1* homework assignments
* Master two data analysis projects
* Receive *Meets some expectations* on the semester research project
* Master one challenge assignment

To get an **A** in the course:

* Receive credit for *N-1* homework assignments
* Master two data analysis projects
* Receive *Meets all expectations* on the semester research project
* Master one challenge assignment

Each grade bundle is an indivisible unit; all assignments in a bundle must meet expectations in order to
earn the associated grade. For example, if you only complete *N-3* homework assignments, the highest grade you can receive is a C+.


## Late work

*No credit will be given for late assignments* (homework, challenge problems, exams, projects), though you may extend the due date by using an extension (see above). If you know you cannot turn in assignment (for instance, if you are ill or there is a family emergency), let me know before the assignment is due, and we will work something out.

