--  Nodes recognizer for ieee.std_logic_unsigned and ieee.std_logic_signed.
--  Copyright (C) 2019 Tristan Gingold
--
--  This program is free software: you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation, either version 2 of the License, or
--  (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
--  You should have received a copy of the GNU General Public License
--  along with this program.  If not, see <gnu.org/licenses>.

package Vhdl.Ieee.Std_Logic_Unsigned is
   type Sign_Kind is (Pkg_Unsigned, Pkg_Signed);

   --  Extract declarations from PKG .
   procedure Extract_Declarations
     (Pkg : Iir_Package_Declaration; Sign : Sign_Kind);
end Vhdl.Ieee.Std_Logic_Unsigned;
