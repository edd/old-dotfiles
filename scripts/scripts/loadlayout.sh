#!/bin/bash

i3-msg "workspace 1: Work; append_layout ~/.config/i3/spaces/1.json"
(atom &)
(gnome-terminal &)
i3-msg "workspace 2: Web; append_layout ~/.config/i3/spaces/2.json"
(google-chrome --profile-directory='Default' &)
(google-chrome --profile-directory='Profile 1' &)
i3-msg "workspace 3: Slack; append_layout ~/.config/i3/spaces/3.json"
(scudcloud &)
i3-msg "workspace 4: Mail; append_layout ~/.config/i3/spaces/4.json"
(~/applications/wmail/WMail &)
