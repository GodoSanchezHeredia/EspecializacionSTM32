/*********************************************************************************/
/********** THIS FILE IS GENERATED BY TOUCHGFX DESIGNER, DO NOT MODIFY ***********/
/*********************************************************************************/
#ifndef ESCENA2VIEWBASE_HPP
#define ESCENA2VIEWBASE_HPP

#include <gui/common/FrontendApplication.hpp>
#include <mvp/View.hpp>
#include <gui/escena2_screen/Escena2Presenter.hpp>
#include <touchgfx/widgets/Box.hpp>
#include <touchgfx/containers/buttons/Buttons.hpp>
#include <touchgfx/widgets/TextAreaWithWildcard.hpp>
#include <touchgfx/widgets/ButtonWithIcon.hpp>

class Escena2ViewBase : public touchgfx::View<Escena2Presenter>
{
public:
    Escena2ViewBase();
    virtual ~Escena2ViewBase();
    virtual void setupScreen();

    /*
     * Virtual Action Handlers
     */
    virtual void UpCounter()
    {
        // Override and implement this function in Escena2
    }
    virtual void DownCounter()
    {
        // Override and implement this function in Escena2
    }

protected:
    FrontendApplication& application() {
        return *static_cast<FrontendApplication*>(touchgfx::Application::getInstance());
    }

    /*
     * Member Declarations
     */
    touchgfx::Box __background;
    touchgfx::Box box1;
    touchgfx::BoxWithBorderButtonStyle< touchgfx::ClickButtonTrigger >  flexButton1;
    touchgfx::TextAreaWithOneWildcard textArea1;
    touchgfx::ButtonWithIcon buttonWithIcon2;
    touchgfx::ButtonWithIcon buttonWithIcon1;

    /*
     * Wildcard Buffers
     */
    static const uint16_t TEXTAREA1_SIZE = 6;
    touchgfx::Unicode::UnicodeChar textArea1Buffer[TEXTAREA1_SIZE];

private:

    /*
     * Callback Declarations
     */
    touchgfx::Callback<Escena2ViewBase, const touchgfx::AbstractButton&> buttonCallback;
    touchgfx::Callback<Escena2ViewBase, const touchgfx::AbstractButtonContainer&> flexButtonCallback;

    /*
     * Callback Handler Declarations
     */
    void buttonCallbackHandler(const touchgfx::AbstractButton& src);
    void flexButtonCallbackHandler(const touchgfx::AbstractButtonContainer& src);

};

#endif // ESCENA2VIEWBASE_HPP