#ifndef ESCENA3PRESENTER_HPP
#define ESCENA3PRESENTER_HPP

#include <gui/model/ModelListener.hpp>
#include <mvp/Presenter.hpp>

using namespace touchgfx;

class Escena3View;

class Escena3Presenter : public touchgfx::Presenter, public ModelListener
{
public:
    Escena3Presenter(Escena3View& v);

    /**
     * The activate function is called automatically when this screen is "switched in"
     * (ie. made active). Initialization logic can be placed here.
     */
    virtual void activate();

    /**
     * The deactivate function is called automatically when this screen is "switched out"
     * (ie. made inactive). Teardown functionality can be placed here.
     */
    virtual void deactivate();

    virtual ~Escena3Presenter() {}
    virtual void setLight(bool state);
    virtual void setADC(int val);

private:
    Escena3Presenter();

    Escena3View& view;
};

#endif // ESCENA3PRESENTER_HPP
