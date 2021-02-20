// The MIT License (MIT)
//
// ModernAVPlayer
// Copyright (c) 2018 Raphael Ankierman <raphrel@gmail.com>
//
// ModernAVPlayerDelegate.swift
// Created by raphael ankierman on 28/05/2018.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation

public protocol ModernAVPlayerDelegate: AnyObject {
    ///
    /// Trigged when player's state changed
    /// - parameters:
    ///     - player: current AVPlayer instance in use
    ///     - state: new player's state
    ///
    func modernAVPlayer(_ player: ModernAVPlayer, didStateChange state: ModernAVPlayer.State)

    ///
    /// Trigged when new media is set (before loading).
    /// - parameters:
    ///     - player: current AVPlayer instance in use
    ///     - media: new current media
    ///
    func modernAVPlayer(_ player: ModernAVPlayer, didCurrentMediaChange media: PlayerMedia?)

    ///
    /// Trigged when item's time updated (seek, playing, load at...)
    /// - parameters:
    ///     - player: current AVPlayer instance in use
    ///     - currentTime: current time
    ///
    func modernAVPlayer(_ player: ModernAVPlayer, didCurrentTimeChange currentTime: Double)

    ///
    /// Trigged when new media is loaded
    /// - parameters:
    ///     - player: current AVPlayer instance in use
    ///     - itemDuration: item's duration
    ///
    func modernAVPlayer(_ player: ModernAVPlayer, didItemDurationChange itemDuration: Double?)

    ///
    /// Trigged when action initiated by user has no effect on the player
    /// - parameters:
    ///     - player: current AVPlayer instance in use
    ///     - unavailableActionReason: reason
    ///
    func modernAVPlayer(_ player: ModernAVPlayer, unavailableActionReason: PlayerUnavailableActionReason)

    ///
    /// Trigged when item play to his end time even on loop mode
    /// - parameters:
    ///     - player: current AVPlayer instance in use
    ///     - endTime: end time detected
    ///
    func modernAVPlayer(_ player: ModernAVPlayer, didItemPlayToEndTime endTime: Double)
}

///
/// Optional methods
///
public extension ModernAVPlayerDelegate {
    func modernAVPlayer(_ player: ModernAVPlayer, didStateChange state: ModernAVPlayer.State) { }
    func modernAVPlayer(_ player: ModernAVPlayer, didCurrentMediaChange media: PlayerMedia?) { }
    func modernAVPlayer(_ player: ModernAVPlayer, didCurrentTimeChange currentTime: Double) { }
    func modernAVPlayer(_ player: ModernAVPlayer, didItemDurationChange itemDuration: Double?) { }
    func modernAVPlayer(_ player: ModernAVPlayer, unavailableActionReason: PlayerUnavailableActionReason) { }
    func modernAVPlayer(_ player: ModernAVPlayer, didItemPlayToEndTime endTime: Double) { }
}
