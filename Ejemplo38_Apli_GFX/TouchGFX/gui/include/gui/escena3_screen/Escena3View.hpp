#ifndef ESCENA3VIEW_HPP
#define ESCENA3VIEW_HPP

#include <gui_generated/escena3_screen/Escena3ViewBase.hpp>
#include <gui/escena3_screen/Escena3Presenter.hpp>

class Escena3View : public Escena3ViewBase
{
public:
    Escena3View();
    virtual ~Escena3View() {}
    virtual void setupScreen();
    virtual void tearDownScreen();
    virtual void setLight(bool state);
    virtual void setADC(int val);
protected:
};

#endif // ESCENA3VIEW_HPP
