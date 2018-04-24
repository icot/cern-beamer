all:
	rm -f template.aux template.toc template.snm
	pdflatex -shell-escape template.tex
	pdflatex -shell-escape template.tex
	pdflatex -shell-escape template.tex

quick:
	pdflatex -shell-escape template.tex

clean:
	rm -rf template.aux template.log template.nav template.out template.snm template.toc template.vrb

printviews:
	pdfnup --nup '2x2' template.pdf
	gs -sOutputFile=template-nup-gray.pdf -sDEVICE=pdfwrite -sColorConversionStrategy=Gray -dProcessColorModel=/DeviceGray -dCompatibilityLevel=1.4 -dNOPAUSE -dBATCH template-nup.pdf

# This is a modified version of the Makefile in https://gitlab.cern.ch/pseyfert/cern-slide-template
# Copyright (C) 2017  Paul Seyfert <pseyfert@cern.ch>

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.

# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
