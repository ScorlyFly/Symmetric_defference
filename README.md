<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

## Features

TODO: Just module which solves the problem of the lack of a built-in</br>symmetric difference in the language

## Getting started

TODO: startin work import package</br>
import 'package:symmetric_difference/symmetric_difference.dart'

## Usage

the main functions for the module operation</br>

Set set1 = {1, 2, 4};</br>
Set set2 = {1, 3, 5};</br>
**symmetricDifferenceSET**(set1, set2); _// 2, 4, 3, 5_</br>

**a function for finding unique elements in more than two sets or a list**</br>
Set set3 = {1, 3, 5, 7};</br>
**multiSymmetricDifference**([set1, set2, set3]); _// 2, 3, 7_</br>

by default, intersection=false in the case of true, processing works</br>
differently in the element output mode, we will get only those elements</br> that available in all listed lists or sets</br>
**multiSymmetricDifference**([set1, set2, set3], intersection=true); // 1

## return type

it is important that the data being restored will be with the **Set** data type!!!
