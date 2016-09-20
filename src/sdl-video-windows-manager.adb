--------------------------------------------------------------------------------------------------------------------
--  Copyright (c) 2013-2016 Luke A. Guest
--
--  This software is provided 'as-is', without any express or implied
--  warranty. In no event will the authors be held liable for any damages
--  arising from the use of this software.
--
--  Permission is granted to anyone to use this software for any purpose,
--  including commercial applications, and to alter it and redistribute it
--  freely, subject to the following restrictions:
--
--     1. The origin of this software must not be misrepresented; you must not
--     claim that you wrote the original software. If you use this software
--     in a product, an acknowledgment in the product documentation would be
--     appreciated but is not required.
--
--     2. Altered source versions must be plainly marked as such, and must not be
--     misrepresented as being the original software.
--
--     3. This notice may not be removed or altered from any source
--     distribution.
--------------------------------------------------------------------------------------------------------------------
package body SDL.Video.Windows.Manager is
   function Get_WM_Info (Win : in Window; Info : out WM_Info) return Boolean is
      function SDL_Get_Window_WM_Info (W : in SDL.C_Pointers.Windows_Pointer; Info : out WM_Info) return SDL_Bool with
        Import        => True,
        Convention    => C,
        External_Name => "SDL_GetWindowWMInfo";

      Result : SDL_Bool := SDL_Get_Window_WM_Info (Win.Internal, Info);
   begin
      return (if Result = SDL_True then True else False);
   end Get_WM_Info;
end SDL.Video.Windows.Manager;
