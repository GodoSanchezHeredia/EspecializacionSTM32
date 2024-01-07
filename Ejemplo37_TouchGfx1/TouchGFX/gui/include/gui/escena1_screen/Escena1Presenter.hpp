#ifndef ESCENA1PRESENTER_HPP
#define ESCENA1PRESENTER_HPP

#include <gui/model/ModelListener.hpp>
#include <mvp/Presenter.hpp>

using namespace touchgfx;

class Escena1View;

class Escena1Presenter : public touchgfx::Presenter, public ModelListener
{
public:
    Escena1Presenter(Escena1View& v);

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

    virtual ~Escena1Presenter() {}

private:
    Escena1Presenter();

    Escena1View& view;
};

#endif // ESCENA1PRESENTER_HPP
