#ifndef ESCENA2VIEW_HPP
#define ESCENA2VIEW_HPP

#include <gui_generated/escena2_screen/Escena2ViewBase.hpp>
#include <gui/escena2_screen/Escena2Presenter.hpp>

class Escena2View : public Escena2ViewBase
{
public:
    Escena2View();
    virtual ~Escena2View() {}
    virtual void setupScreen();
    virtual void tearDownScreen();
    virtual void UpCounter();
    virtual void DownCounter();
protected:
   int16_t count=0;

};

#endif // ESCENA2VIEW_HPP
