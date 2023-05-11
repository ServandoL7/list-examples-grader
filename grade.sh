CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'
 
# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests

cd student-submission
file = "ListExamples.java"
    if [[ -f $file ]]
    then
        cp $file `grading-area`
        cd ../grading-area
        javac $file
        java ${file%.java}
        if [[ $? > 0 ]]
        then
            echo "Error within $file"
        else
            echo "pass"
        fi
    else
        echo "None"
    fi