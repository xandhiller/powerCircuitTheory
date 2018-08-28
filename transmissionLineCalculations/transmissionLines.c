#include <stdio.h>
#include <math.h>

#define NAME_LENGTH   100
#define SPECS_FILENAME "transmissionLines.txt"
#define NB_LOCATIONS  5

/* TODO: Read the city names and lengths out of a file. */
/* TODO: Run calculations on the four models of transmission line orientation */
/* TODO: Print to the file in csv format */

struct transmissionLine {
  float genToStep;    /* Distance from generation to step up          */
  float highVoltage;  /* Distance of high voltage transmission        */
  float stepToSub;    /* Distance from step down to local subStation  */
};
typedef struct transmissionLine transmissionLine_t;

struct powerLocation {
  transmissionLine_t line;
  char name[NAME_LENGTH];
};
typedef struct powerLocation powerLocation_t;

void initTransmissionLoc(powerLocation_t loc[], int size);
void printTransmissionLoc(powerLocation_t loc[], int size);

int main (void) {
  powerLocation_t locations[NB_LOCATIONS];
  initTransmissionLoc(locations, NB_LOCATIONS);
  printTransmissionLoc(locations, NB_LOCATIONS);

  return 0;
}

void initTransmissionLoc(powerLocation_t loc[], int size) {
  FILE* specs;
  specs = fopen(SPECS_FILENAME, "r");
  int i;
  for (i = 0; i < size; i++) {
    fscanf(specs, "%[^,]s ", loc[i].name);
    fscanf(specs, "%*c %f ", &loc[i].line.genToStep);
    fscanf(specs, "%*c %f ", &loc[i].line.highVoltage);
    fscanf(specs, "%*c %f %*[,] %*[\n]", &loc[i].line.stepToSub);
  }
  fclose(specs);
}

void printTransmissionLoc(powerLocation_t loc[], int size) {
  int i;
  for (i = 0;  i < size; i++) {
    printf("Location name: \"%s\":\n", loc[i].name);
    printf("Distance from Generator to Step Up: %f\n", loc[i].line.genToStep);
    printf("Distance of high voltage transmission: %f\n", loc[i].line.highVoltage);
    printf("Distance from step-down to local sub-station: %f\n\n", loc[i].line.stepToSub);
  }
}

/*  Orienation 1:
*
*   a   b   c
*   o---o---o
*   <------->
*      2d
*/
void transOrientOne(powerLocation_t loc[], int size) {

}

/*  Orienation 1:
*
*   o
*/
void transOrientOne(powerLocation_t loc[], int size) {

}
