// Taken in part from:
// https://gist.github.com/mismith/63987d1d78122395f844
'use strict';

var keys = [];
var triple = ['ctrl', 'alt', 'cmd'];

// left half
keys.push(new Key('h', triple, function() {
    var window = Window.focused(),
        screen = window.screen().visibleFrameInRectangle();

    window.setFrame({
        x: screen.x,
        y: screen.y,
        width: screen.width * .5,
        height: screen.height,
    });
}));
// right half
keys.push(new Key('l', triple, function() {
    var window = Window.focused(),
        screen = window.screen().visibleFrameInRectangle();

    window.setFrame({
        x: screen.x + screen.width * .5,
        y: screen.y,
        width: screen.width * .5,
        height: screen.height,
    });
}));
// left two third
keys.push(new Key('i', triple, function() {
    var window = Window.focused(),
        screen = window.screen().visibleFrameInRectangle();

    window.setFrame({
        x: screen.x,
        y: screen.y,
        width: screen.width * .666,
        height: screen.height,
    });
}));
// right two third
keys.push(new Key('o', triple, function() {
    var window = Window.focused(),
        screen = window.screen().visibleFrameInRectangle();

    window.setFrame({
        x: screen.x + .333 * screen.width,
        y: screen.y,
        width: screen.width * .666,
        height: screen.height,
    });
}));
// right third
keys.push(new Key('right', triple, function() {
    var window = Window.focused(),
        screen = window.screen().visibleFrameInRectangle();

    window.setFrame({
        x: screen.x + screen.width * .666,
        y: screen.y,
        width: screen.width * .333,
        height: screen.height,
    });
}));
// left third
keys.push(new Key('left', triple, function() {
    var window = Window.focused(),
        screen = window.screen().visibleFrameInRectangle();

    window.setFrame({
        x: screen.x,
        y: screen.y,
        width: screen.width * .333,
        height: screen.height,
    });
}));
// middle third
keys.push(new Key('down', triple, function() {
    var window = Window.focused(),
        screen = window.screen().visibleFrameInRectangle();

    window.setFrame({
        x: screen.x + screen.width * .333,
        y: screen.y,
        width: screen.width * .333,
        height: screen.height,
    });
}));

// fill screen
keys.push(new Key('f', triple, function() {
    var window = Window.focused(),
        screen = window.screen().visibleFrameInRectangle();

    window.setFrame(screen);
}));

// move to next screen
keys.push(new Key('n', triple, function() {
    var window = Window.focused(),
        oldWindow = window.frame(),
        oldScreen = window.screen().visibleFrameInRectangle(),
        screen = window.screen().previous().visibleFrameInRectangle();

    window.setFrame({
        x: screen.x + ((oldWindow.x - oldScreen.x) / oldScreen.width) * screen.width,
        y: screen.y + ((oldWindow.y - oldScreen.y) / oldScreen.height) * screen.height,
        width: screen.width * (oldWindow.width / oldScreen.width),
        height: window.height * (oldWindow.height / oldScreen.height),
    });
}));
// move to previous screen
keys.push(new Key('p', triple, function() {
    var window = Window.focused(),
        oldWindow = window.frame(),
        oldScreen = window.screen().visibleFrameInRectangle(),
        screen = window.screen().next().visibleFrameInRectangle();

    window.setFrame({
        x: screen.x + ((oldWindow.x - oldScreen.x) / oldScreen.width) * screen.width,
        y: screen.y + ((oldWindow.y - oldScreen.y) / oldScreen.height) * screen.height,
        width: screen.width * (oldWindow.width / oldScreen.width),
        height: window.height * (oldWindow.height / oldScreen.height),
    });
}));
