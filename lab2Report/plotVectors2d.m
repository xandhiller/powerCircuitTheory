## Copyright (C) 2018 Alex
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} plotVectors2d (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Alex <alex@AdvRobotics>
## Created: 2018-09-15

function [NULL] = plotVectors2d (input1, input2)

figure(1);
origin = [0;0];
o = origin;
transform = [o,input1];
transform = transpose(transform);
origin = 

plot(, , 'b');
hold on;
plot(origin, input2, 'r');
hold off;
legend('First vector', 'Second vector')

endfunction
