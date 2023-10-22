#include "raylib.h"
#include "emscripten/emscripten.h"

void update()
{
    BeginDrawing();
    ClearBackground(BLACK);
    DrawText("Hello World!", 100, 100, GetFontDefault().baseSize * 4, WHITE);
    EndDrawing();
}

int main(void)
{
    InitWindow(800, 600, "Hello World!");

    emscripten_set_main_loop(update, 60, 1);

    CloseWindow();
}