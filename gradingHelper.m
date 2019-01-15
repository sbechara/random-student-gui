% Grading Helper: will show everyone that was called on but not present
for i = 1:length(courseInfo)
    if courseInfo(i).calls ~= 0
        if courseInfo(i).calls ~= courseInfo(i).numCorrect
            courseInfo(i).names
        end
    end
end