#include <stdio.h>
#include <ncurses.h>

int main(){
	initscr();
	printw("hi\n");
	refresh();
	getch();
	endwin();
}
