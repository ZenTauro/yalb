#    Copyright 2018 Pedro Gomez Martin <zentauro@riseup.net>
#
#    This file is part of Yalb.
#
#    Yalb is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License, version 3,
#    as published by the Free Software Foundation.
#
#    Yalb is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with Yalb. If not, see <http://www.gnu.org/licenses/>.

front = frontend
back = backend

$(front) $(back) :
	git submodule init

backend_bin : $(back)
	(cd $(back) && cargo +nightly build --release) && cp $(back)/target/release/live_board backend_bin

frontend_build : $(front)
	(cd $(front) && npm run build --release) && cp -r $(front)/build frontend_build

all : backend_bin frontend_build

.PHONY : container
