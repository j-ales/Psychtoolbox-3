function glTransformFeedbackVaryings( program, count, varyings, bufferMode )

% glTransformFeedbackVaryings  Interface to OpenGL function glTransformFeedbackVaryings
%
% usage:  glTransformFeedbackVaryings( program, count, varyings, bufferMode )
%
% program = GLSL shader program handle.
%
% count = Number of varyings.
%
% varyings = cell array of 'count' char() name strings of the 'count'
% varyings to return during transform feedback.
%
% bufferMode = The bufferMode to use for transform feedback.
%
%
% C function:  void glTransformFeedbackVaryings(GLuint program, GLsizei count, const GLchar** varyings, GLenum bufferMode)

% 30-Sep-2014 -- created manually by MK

% ---protected---

if nargin~=4,
    error('invalid number of arguments');
end

if length(varyings) ~= count
    error('Number of varying name strings does not match count');
end

instring = '';
for i = 1:count
    instring = [instring char(varyings{i}) char(10) ]; %#ok<AGROW>
end

moglcore( 'glTransformFeedbackVaryings', program, count, instring, bufferMode, 0 );

return
