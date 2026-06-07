#Requires AutoHotkey v2.0

F8::
{
    ; arquivos na Área de Trabalho
    desktop := A_Desktop

    imagem := desktop "\MikuMikuCarambito.png"
    audio := desktop "\MikuMikuCarambito.mp3"

    ; toca áudio automaticamente
    SoundPlay audio

    ; cria janela fullscreen
    gui1 := Gui("-Caption +AlwaysOnTop +ToolWindow")

    ; adiciona imagem ocupando a tela inteira
    gui1.AddPicture(
        "x0 y0 w" A_ScreenWidth " h" A_ScreenHeight,
        imagem
    )

    ; mostra a imagem
    gui1.Show(
        "x0 y0 w" A_ScreenWidth " h" A_ScreenHeight
    )

    ; espera 9 segundos
    Sleep 9000

    ; fecha
    gui1.Destroy()
}