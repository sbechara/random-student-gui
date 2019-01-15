% Copyright (C) 2018 Samuel Bechara
% 
% This program is free software; you can redistribute it and/or modify it
% under the terms of the GNU General Public License as published by
% the Free Software Foundation; either version 3 of the License, or
% (at your option) any later version.
% 
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.

% Author: Samuel Bechara <sbechara@sbechara-ThinkPad-T440s>
% Created: 2018-01-04

function initializeRandomStudent (xlsFileName, courseIdent)
  % initializeRandomStudent() is meant to be run once at the beginning of each
  % semester to generate the vectors and .mat files necessary for the
  % randomStudent functions to work
  %
  % PLEASE SEE DOCS FOR ADDITIONAL INFORMATION
  %
  % Inputs:
  %   xlsFileName - a string that points to an xls file containing the
  %   names of everyone in class. Cell A1 should be "Names" and each cell
  %   below should contain the name of a student
  %   courseIdent - user chooses a name to identify course by. Will be .mat file used in all future calls to functions.
  %                 i.e.) mech105
  % Author: Samuel Bechara <sbechara@sbechara-ThinkPad-T440s>
  % Created: 2018-01-05
  % Last Edited: 2018-08-17
  
  courseInfo(1).courseName = courseIdent;
 
  data = readtable(xlsFileName);
  for i = 1:length(data.Names)
    courseInfo(i).names = data.Names(i);
    courseInfo(i).calls = 0;
    courseInfo(i).probability = 1;
    courseInfo(i).numCorrect = 0;
  end
  
  % only save the necessary workspace variables
  save(courseIdent,'courseInfo');

end
