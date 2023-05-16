@echo off
title Teon's Guess the Number Game_1.2
color 75
set nrgamesplayed=0
set bestscore=1000

:Menu
cls
echo  Menu
echo.
echo  Ur stats: Nr of games played is %nrgamesplayed%, Best score is %bestscore%
echo.
echo    1. Play the Game
echo    2. Credits
echo    3. Exit
echo.
echo  Type the number of ur option and press enter!
set /p menuselection=:
if %menuselection%==1 ( goto Game_1
) else (
    if %menuselection%==2 ( goto Credits
    ) else (
        if %menuselection%==3 ( goto Ask_if_exit
        ) else ( goto Menu)
        )
)


:Ask_if_exit
cls
echo  U sure u wanna leave?
echo.
echo  There are still a lot of things to do and secrets to discover...
echo.
echo  In the end, it's ur choice, but please be clear: yes or no?
set /p leavingchoice=:
if %leavingchoice%==yes goto Sure_exit
if %leavingchoice%==no goto Cancel_exit

:Sure_exit
cls
echo  Thanks for playing!
echo.
echo  Bye!
echo.
echo  PS If u have any sugestion for makeing this game better, please contact me on Whatsapp!
pause
Exit

:Cancel_exit
cls
echo  Pfiu, When u told me u wanna exit, I got scared!
echo  Ok, let's go back to the game!
pause
goto Menu

:Credits
cls
echo  Credits
echo.
echo  A game by
echo  Teon
echo    = A future game dev
echo.
echo.
echo  Boring stuff:
echo    Teodor NEAGOE, 16 years old, CNAS Brasov, Romania
pause
goto Menu

:Game_1
cls
echo  Hallo!
pause

cls
echo  Would u like to play this game?
pause

cls
echo  Ups, u can't tell me.
echo  But no problem, becasue I'm sure u want this!
pause

cls
echo  Why do I know this? Glad u asked!
echo  U know, I have super powers...
pause

cls
echo  Just kidding...
echo  I mean, I'm not totally joking, becasue I have a superpower: programming!
echo  But I'm gonna tell u my secret just when u can win the game!
echo    (In case u already forgot, the secret is that I read ur mind, so I knew that u wanna play this game)
pause

cls
echo  Now, because u are motivated (or at least that's what I whish), we can start the game!
echo  About what do u think it is?
pause
cls
echo  Ye, ye, I now, u can't tell me, so I'm living u 3 options (what's the logic that u just coudn't tell me but now u can? Idk):

:Game_2
echo    1. Piu-piu game
echo    2. Spamming game (I mean an Inc game)
echo    3. Easy-to-code game (Ups, I think it's to ovious, so let's say Arcade game)
echo  Type the number of ur option and press enter!
set /p menuselection=:
if %menuselection%==3 ( goto Game_3
) else (
    cls
    echo  Nope! Try again...
    goto Game_2
)

:Game_3
cls
echo  Congrats: u are a true fortune teller in the stars!
echo  Or u cheated?! Did u read from the name of this app? I ghess my fault...
pause

cls
echo  So now not only u are motivated, but u also knwo about what's the game, so I think we are ready to start!
pause

cls
echo  Ur task: guess as fast as u can the number about I'm thinking!
echo    (this means from a few attemps as posible, because I can't time, yet)
echo  Ou, and I forgot a small clarification: it's from 1 to 100 and it's a natural number:)

set /a nrrand=(%random%*100/32768)+1
set nrtries=0

:Game_4
echo  Guess the number
set /p nrguessed=:
cls
set /a nrtries+=1
echo  So ur %nrtries% guess is %nrguessed%...
echo  And the random number was %nrrand%
if %nrguessed% gtr %nrrand% ( goto Guess_less
) else (
    if %nrguessed%==%nrrand% ( goto Guess_win
    ) else ( goto Guess_more )
)

:Guess_less
echo  But the number I'm thinking about is smaller...
echo  Try again!
goto Game_4
exit

:Guess_more
echo  But the number I'm thinking about is bigger
echo  Try again!
goto Game_4
exit

:Guess_win
set /a nrgamesplayed+=1
if %nrtries% lss %bestscore% ( set /a bestscore=%nrtries% )
echo  And oau: tha's exactly the number I was thinking about!
echo  So congrats, u won the game from %nrtries% tries!
pause

cls
echo  Now u're worthy of knowing my secret!
echo    (In case u already forgot, the secret is that I read ur mind, so I knew that u wanna play this game)
echo Well, is very simple:
echo At the beggining of the game, I asked u what u wanna do, and u select the 1st option, so I understood that u wanna play it.
echo Tha's it:))
pause

cls
echo  Now what would u like to do?
echo 1. Go to menu
echo 2. Replay
echo 3. Exit and tell ur friends about this game
set /p finalselection=:
if %finalselection%==1 ( goto Menu
) else (
    if %finalselection%==2 ( goto Game_1
    ) else (
        else ( goto Ask_if_exit)
        )
)
pause

