#!/bin/bash
sleep 3;
zapzap &
wpctl set-mute @DEFAULT_AUDIO_SOURCE@ 1;
wpctl set-mute @DEFAULT_AUDIO_SOURCE@ 0;