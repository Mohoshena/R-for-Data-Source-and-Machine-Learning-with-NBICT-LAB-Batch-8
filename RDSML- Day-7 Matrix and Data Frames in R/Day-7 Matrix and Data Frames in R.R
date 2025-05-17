# Matrix in R
study_hours = c(89, 69, 45, 75, 63, 54, 23, 25, 57, 46)
subject_marks = c(79, 53, 71, 57, 63, 54, 74, 77, 61, 69)

# creating a matrix just using study_hours
stu_hours_mat = matrix(study_hours)
stu_hours_mat
study_hours

# joining two colums in a matrix
student_data = c(study_hours, subject_marks)
student_data
student_matrix = matrix(student_data, byrow = FALSE, nrow = 10)
student_matrix

# To covert vectors into matrix 
student_matrix

# Naming rows and columns
colnames(student_matrix) = c('Hours', 'Marks')
student_matrix
rownames(student_matrix) = c(1:10)
student_matrix

# Lets try for 3 columns . Need to practice by myself


# Selecting an element from matrix
student_matrix[4, 1]
student_matrix[5, 1]

# seeing details summary from matrix 
summary(student_matrix)

# Data Frames in R
student_names = c('Mr1', 'Ms2', 'Ms3', 'Mr4', 'Ms5')
study_hours = c(20, 24, 46, 62, 22)
marks = c(40, 55, 69, 54, 45)
Gender = c("Male", "Female", "Female", "Male", "Female")
male = c(TRUE, FALSE, FALSE, TRUE, FALSE)

stu_data = data.frame(student_names, study_hours, marks, male, Gender)
stu_data
summary(stu_data)

stu_data = data.frame(student_names, study_hours, marks, male, male)
stu_data
summary(stu_data)

# When we want to deal with a single factor

mean(stu_data$study_hours)
