/**
 * Checkerboard
 */

#include <Arduino.h>
#include <BayIndicator.h>

BayIndicator display1 = BayIndicator(D4, D3, D5);
BayIndicator display2 = BayIndicator(D9, D8, D10);

void setup() {
  delay(10000);

  display1.begin();
  display2.begin();

  display1.setBrightness(5);
  display2.setBrightness(5);

  for (int i = 0; i < 192; i++) {
    for (int j = 0; j < 9; j++) {
      bool bit = false;
      bit |= i >= 0 && i < 12 && j % 2 == 1;
      bit |= i >= 12 && i < 24 && i % 2 == 0;
      bit |= i >= 24 && i < 36 && (i + j) % 2;

      display1.drawPixel(i, j, (i + j) % 2);
      display2.drawPixel(i, j, (i + j + 1) % 2);
    }
  }

  display1.display();
  display2.display();
}

void loop() {}
