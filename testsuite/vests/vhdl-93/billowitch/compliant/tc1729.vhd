
-- Copyright (C) 2001 Bill Billowitch.

-- Some of the work to develop this test suite was done with Air Force
-- support.  The Air Force and Bill Billowitch assume no
-- responsibilities for this software.

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

-- ---------------------------------------------------------------------
--
-- $Id: tc1729.vhd,v 1.2 2001-10-26 16:29:43 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c09s03b00x00p02n01i01729ent IS
END c09s03b00x00p02n01i01729ent;

ARCHITECTURE c09s03b00x00p02n01i01729arch OF c09s03b00x00p02n01i01729ent IS

  procedure check (x: in integer; y: in boolean) is
  begin
    assert NOT( x=3 and y=true )
      report "***PASSED TEST: c09s03b00x00p02n01i01729"
      severity NOTE;
    assert ( x=3 and y=true )
      report "***FAILED TEST: c09s03b00x00p02n01i01729 - A label can be used before a procedure call statement."
      severity ERROR;
  end;

  signal p: integer := 3;
  signal q: boolean := true;

BEGIN

  L1 :   check (p,q);    -- No_failure_here

END c09s03b00x00p02n01i01729arch;
