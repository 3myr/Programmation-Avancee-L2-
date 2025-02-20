CC = g++
CFLAGS = -W -Wall -Wextra -Wpedantic
LDFLAGS =
EXEC = rpg-app
SRC = main.cpp
DEPS = Vaisseau.cpp Player.cpp Enemi.cpp Projectile.cpp Background.cpp View.cpp Atq1.cpp Atq3.cpp Menu.cpp MainMenu.cpp PauseMenu.cpp Interface.cpp Couche.cpp Liste/linkedListe.cpp Boss.cpp ChoiceMenu.cpp Bonus.cpp Attaque.cpp
LIBS = -lsfml-graphics -lsfml-audio -lsfml-window -lsfml-system
OBJ = $(SRC: .cpp=.o)

main: $(OBJ)
	clear
	$(CC) -c $(DEPS) $(SRC)
	$(CC) $(OBJ) -o $(EXEC) $(LIBS)

clean:
	rm -rf *.o *~
	clear

mrproper:
	cleanrm -rf $(EXEC)
