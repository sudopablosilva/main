      *-----------------------------------------------------------------
      * Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
      * SPDX-License-Identifier: Apache-2.0
      *-----------------------------------------------------------------
      * AUTHOR.....: LUIS GUSTAVO DANTAS (AWS).
       IDENTIFICATION DIVISION.
       PROGRAM-ID.      MAIN.
      *-----------------------------------------------------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 ws-libio.
       copy LIB1IO.

      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
      *-----------------------------------------------------------------

           MOVE '00001' TO LIB1-I-KEY

           CALL 'LIB1' using ws-libio

           DISPLAY 'MAIN.LIB1-O-ERR  : ' LIB1-O-ERR
           DISPLAY 'MAIN.LIB1-O-DATA1: ' LIB1-O-DATA

           MOVE ZEROS TO RETURN-CODE

           GOBACK.
