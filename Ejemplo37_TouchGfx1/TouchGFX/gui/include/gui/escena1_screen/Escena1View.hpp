#ifndef ESCENA1VIEW_HPP
#define ESCENA1VIEW_HPP

#include <gui_generated/escena1_screen/Escena1ViewBase.hpp>
#include <gui/escena1_screen/Escena1Presenter.hpp>

class Escena1View : public Escena1ViewBase
{
public:
    Escena1View();
    virtual ~Escena1View() {}
    virtual void setupScreen();
    virtual void tearDownScreen();
protected:
};

#endif // ESCENA1VIEW_HPP
