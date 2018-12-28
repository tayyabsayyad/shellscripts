#!/bin/bash


# How to Use 

# Open Terminal and execute command as $sh DirectoryStructureCourseFile.sh

echo "Enter the name of the root Directory ... "
read rootdir

echo "..... Setting up directories ...."

sleep 3

mkdir $rootdir

cd $rootdir

#Create all subdirectries 

mkdir 1.Cover_Page 2.Index_Page 3.Institute_Vision_Mission 4.Department_Vision_Mission 5.Time_Table 6.Faculty_Contact_Detail 7.Acad_Calender 8.Syllabus 9.CO_PSO_PO 10.Gaps_Identified 11.TLP 11.Class_Assignments

cd 11.Class_Assignments 
mkdir 1.Rubrics

cd ..

mkdir 12.Assessment_tools 13.Question_Banks

cd 13.Question_Banks

mkdir Ut1 Ut2

cd ..

mkdir 14.Ut_Papers

cd 14.Ut_Papers

mkdir Ut1 Ut2

cd Ut1 
touch ut1_question_paper.odt ut1solution.odt
cd ..

cd Ut2
touch ut2_question_paper.odt ut1solution.odt
cd ..

mkdir UT_Result_Analysis

cd UT_Result_Analysis

touch Weak_Bright_Students.odt

touch Weak_Bright_Students_Process.odt

cd .. 
cd ..

mkdir 15.Univ_Questions_Papers 16.Reports_on_activites

cd 16.Reports_on_activites

echo "Details of GAP fulfillment activity, Guest Lect, Ind. Visits, mini Project, Seminar etc. feedback is must. " >>Readme.txt

cd ..

mkdir 17.Term_Work

cd 9.CO_PSO_PO

mkdir Attainment_Calculations

cd ..

cd 13.Question_Banks

mkdir sampleOralQuestions Practical_Exam_Questions

cd ..

mkdir 18.Student_Attendence_Record 19.Students_Feedback_Reports 20.Lab_Mannual 21.MCQ_Questions_Moodle 22.Course_Exit_survey 23.Teaching_Notes 

mkdir 24.Lecture_Notes 25.Slides 26.Acadmic_Audit_Reports 27.Remedial_Details 28.Innovative_Methods 29.Execution_Summary 30.Operational_Documents

echo "Directory Structure for Course File is Ready ....."
