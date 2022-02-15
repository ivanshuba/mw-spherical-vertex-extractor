## ModuleWorks Test Task Solution: Use Sphere Movement To Extract Vertices From Grid

![Solution_](https://user-images.githubusercontent.com/24988714/154082784-316b4f69-a9a9-4444-ac25-3cc4490f5fd0.gif)


## To run the provided code on your machine, please apply the following steps:

1. Download [Processing](https://processing.org/) *IDE* from the [Downloads section](https://processing.org/download) of the official website ( _currently, the latest version is_ __*4.0b6*__ )
2. Unpack the downloaded archive into any folder on your machine
3. Run the Processing IDE ( _on Windows, simply double-click the processing.exe file inside the unpacked archive_ )
4. Inside the Processing IDE:
    1. _Open the project by using the following steps:_
        - Click on `File` menu
        - Click on `Open...` menu, the OS file selecting dialog should appear
        - Navigate to the project folder and select the `Solution.pde` file
        - Click `Open` button of the file selection dialog pane
    2. _Import the [nub](https://github.com/VisualComputing/nub) library_
        - Click on `Sketch` menu
        - Click on `Import library...` menu
        - Click on `Add library...` menu
        - Type "nub" in the search field or select the library directly from the list of libraries
              ![image](https://user-images.githubusercontent.com/24988714/154087981-dd89df7f-ccb4-4f2b-a4dd-a18ef59acd74.png)
        - Press `Install` button and wait while library will be installed into IDE
        - Close the "Import Library" dialog pane

5. Run project by clicking on the `Run` button

## Use keyboard and mouse to navigate in world space and interact with model

### Interacting with the `Grid`:
- to __*REMOVE*__ the vertices contained in the `Capsule` volume from the `Grid`, press **`R`** keyboard button
- to __*(re)INITIALIZE*__ the vertices in `Grid`, press **`I`** keyboard button
- to _show/hide_ those vertices represenging the `Grid` __*VOLUME*__, press **`V`** keyboard button
- to _show/hide- those vertices representing the `Grid` __*SKIN*__, press **`S`** keyboard button

### Interacting with the `Capsule`:
- to move around any of `Capsule` **spheres**, click and drag them with the _RIGHT_MOUSE_BUTTON_

### Interacting with the screen `Canvas`:
- to  __*PAN*__ the model in world space, you can click and drag on an empty space with the _RIGHT_MOUSE_BUTTON
- to __*ROTATE*__ the model in world space, you clck and drag on an empty space with the _LEFT_MOUSE_BUTTON_, 