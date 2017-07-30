/* Copyright 2017 Pedro Cuadra & Meghadoot Gardi
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at

 *  http://www.apache.org/licenses/LICENSE-2.0

 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License. */

#ifndef ZUMOSEGWAY_H_
#define ZUMOSEGWAY_H_

#ifdef ARDUINO
#include <Arduino.h>
#include <Zumo32U4.h>
#endif


#include<Component.h>
#include<ZumoMotors.h>
#include<ZumoIMUFilters.h>
#include<Util.h>

/**
 * Zumo board states
 */
enum zumo_states_e {
  /** Initializing state */
  S_INITIALIZING,
  /** Balancing state */
  S_BALANCING,
  /** Calibrating state */
  S_CALIBRATING,
  /** Initializing state */
  S_MOVING_FORWARD,
  /** Initializing state */
  S_MOVING_BACKWARDS,
  /** Laying State */
  S_LAYING,
};

/**
 * Signal Class
 */
class ZumoSegway: public Component {
public:
  /** Zumo motors */
  ZumoMotors motors;
  /** Zumo IMU */
  ZumoIMUFilters imu;

  /**
   * Constructors
   * @param freq sampling frequency
   */
  ZumoSegway(float freq) : motors(), imu(){
    this->freq = freq;
  }

private:

  float freq;

};

#endif
