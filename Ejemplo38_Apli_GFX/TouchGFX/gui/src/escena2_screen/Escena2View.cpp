#include <gui/escena2_screen/Escena2View.hpp>

Escena2View::Escena2View()
{

}

void Escena2View::setupScreen()
{
    Escena2ViewBase::setupScreen();
}

void Escena2View::tearDownScreen()
{
    Escena2ViewBase::tearDownScreen();
}


void Escena2View::UpCounter(){

	count++;
	Unicode::snprintf(textArea1Buffer, TEXTAREA1_SIZE, "%d", count);
	textArea1.invalidate();
}


void Escena2View::DownCounter(){

	count--;
	if (count<0) {
		count = 0;
	}
	Unicode::snprintf(textArea1Buffer, TEXTAREA1_SIZE, "%d", count);
	textArea1.invalidate();
}
