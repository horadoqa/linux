#!/bin/bash
contador=1
until [ $contador -gt 5 ]; do
  echo "Contador $contador"
  ((contador++))
done