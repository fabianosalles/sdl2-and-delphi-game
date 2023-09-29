program InitSDL;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  SDL2,
  System.SysUtils;

begin
  Write('Initializing SDL 2...');
  if SDL_Init(SDL_INIT_VIDEO) < 0 then
  begin
    Writeln('Couldn''t initialize SDL: %s\n', SDL_GetError());
    Halt(1);
  end;

  Writeln(' ok, it works!');
  Sleep(3000);
  SDL_Quit();
end.
