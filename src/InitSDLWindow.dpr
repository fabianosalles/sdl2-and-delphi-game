program InitSDLWindow;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  SDL2,
  System.SysUtils;

var
  window : PSDL_Window;

begin
  Write('Initializing SDL2...');
  if SDL_Init(SDL_INIT_EVERYTHING) < 0 then
  begin
    Writeln('Couldn''t initialize SDL: %s\n', SDL_GetError());
    Halt(1);
  end;
  Writeln(' ok, it works!');

  window := SDL_CreateWindow('SDL2 Window',
    SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
    1080, 720, SDL_WINDOW_SHOWN);

  Sleep(5000);
  SDL_DestroyWindow(window);
  SDL_Quit();
end.
