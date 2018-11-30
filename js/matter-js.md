# matter-js

https://cdnjs.cloudflare.com/ajax/libs/matter-js/0.12.0/matter.min.js


```html
<script src="https://cdnjs.cloudflare.com/ajax/libs/matter-js/0.12.0/matter.min.js"></script>
```


<!-- @import "[TOC]" {cmd="toc" depthFrom=2 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

* [getting started](#getting-started)
  * [create aliases for all Matter.js modules](#create-aliases-for-all-matterjs-modules)
  * [create an engine](#create-an-engine)
  * [create a renderer](#create-a-renderer)
  * [create bodies and a ground](#create-bodies-and-a-ground)
  * [add all of the bodies to the world](#add-all-of-the-bodies-to-the-world)
  * [run the engine & renderer](#run-the-engine--renderer)
* [Matter.Bodies](#matterbodies)
* [common modules](#common-modules)
* [codepens](#codepens)

<!-- /code_chunk_output -->


## getting started

[wiki/Getting-started](https://github.com/liabru/matter-js/wiki/Getting-started)

<details><summary>expand code</summary>

```js
// module aliases
var Engine = Matter.Engine,
    Render = Matter.Render,
    World = Matter.World,
    Bodies = Matter.Bodies;

// create an engine
var engine = Engine.create();

// create a renderer
var render = Render.create({
    element: document.body,
    engine: engine
});

// create two boxes and a ground
var boxA = Bodies.rectangle(400, 200, 80, 80);
var boxB = Bodies.rectangle(450, 50, 80, 80);
var ground = Bodies.rectangle(400, 610, 810, 60, { isStatic: true });

// add all of the bodies to the world
World.add(engine.world, [boxA, boxB, ground]);

// run the engine
Engine.run(engine);

// run the renderer
Render.run(render);
```
</details>

---

[Getting Started With Matter.js](https://code.tutsplus.com/tutorials/getting-started-with-matterjs-introduction--cms-28784) by Monty Shokeen

<details><summary>expand code</summary>

```css
body {
  margin: 20px auto;
  text-align: center;
}
```

```js
var Engine = Matter.Engine,
    Render = Matter.Render,
    World = Matter.World,
    Bodies = Matter.Bodies;

var engine = Engine.create();

var render = Render.create({
  element: document.body,
  engine: engine,
  options: {
    width: 800,
    height: 400,
    wireframes: false
  }
});

var boxA = Bodies.rectangle(400, 200, 80, 80);
var ballA = Bodies.circle(380, 100, 40, 10);
var ballB = Bodies.circle(460, 10, 40, 10);
var ground = Bodies.rectangle(400, 380, 810, 60, { isStatic: true });

World.add(engine.world, [boxA, ballA, ballB, ground]);
Engine.run(engine);
Render.run(render);
```
[codepen example](https://codepen.io/Shokeen/pen/JNZYVP)

</details>


### create aliases for all Matter.js modules 

We begin by creating aliases for all the Matter.js modules that we might need in our project

```
var Engine = Matter.Engine,
    Render = Matter.Render,
    World = Matter.World,
    Bodies = Matter.Bodies;
```

* The `Matter.Engine` module contains methods for creating and manipulating engines. 
  * Engines are required in a project to update the simulation of the world. 
* The `Matter.Render` module is required to visualize different engines. 
* The `Matter.World` module is used to create and manipulate the world in which the engine runs. 
  * It is similar to the `Matter.Composite` module, but it lets you tweak a few additional properties like gravity and bounds. 
* The last module in our code, called `Matter.Bodies`, allows you to create rigid body objects. 
  * Another similar module called `Matter.Body` allows you to manipulate individual bodies.


### create an engine
```
var engine = Engine.create();
```

The next line uses the `create([settings])` method of the `Matter.Engine` module to create a new engine 

<!-- * <mark>you can control the global scaling factor of time for all the bodies in the world.</mark> 
  * Setting a value **less than 1** will result in the world interacting in *slow motion*. 
  * Similarly, a value g**reater than 1 will** make the world *fast-paced*.  -->


### create a renderer

```
var render = Render.create({
  element: document.body,
  engine: engine,
  options: {
    width: 800,
    height: 400,
    wireframes: false
  }
});
```

After that, we use the `create([settings])` method of the `Matter.Render` module to create a new renderer. Just like the Engine module, the settings parameter in the above method is an object used to specify different options for the parameter.

* You can use the `element` key to specify the element where the library should insert the canvas.
* Similarly, you can also use the `canvas` key to specify the canvas element where the Matter.js world should be rendered. 
* There is also an `options` key that actually accepts an object as its value. 
  * You can use this key to set values for different parameters like the **width** or **height** of the canvas. 
  * You can also turn the **wireframes** on or off by setting the value of wireframe key to true or false respectively.

### create bodies and a ground

```
var boxA = Bodies.rectangle(400, 200, 80, 80);
var ballA = Bodies.circle(380, 100, 40, 10);
var ballB = Bodies.circle(460, 10, 40, 10);
var ground = Bodies.rectangle(400, 380, 810, 60, { isStatic: true });
```

* The next few lines create different bodies that will interact in our world. The bodies are created with the help of the `Matter.Bodies` module in Matter.js. 
* In this example, we have just created two circles and a rectangle using the `circle()` and `rectangle()` method. 
  * Other methods are available as well to create different polygons.

### add all of the bodies to the world
```
World.add(engine.world, [boxA, ballA, ballB, ground]);
```

Once we have created the bodies, we need to add them to a world of our choice using the `add()` method from the `Matter.World` module. 

### run the engine & renderer

```
Engine.run(engine);
Render.run(render);
```
After adding the necessary bodies to our world, we just need to run the engine and the renderer using the `run()` method from the respective modules. 


## Matter.Bodies

<blockquote>

`Matter.Bodies.circle(x, y, radius, [options], [maxSides])`

`Matter.Bodies.fromVertices(x, y, [[vector]], [options], [flagInternal=false], [removeCollinear=0.01], [minimumArea=10])`

`Matter.Bodies.polygon(x, y, sides, radius, [options])`

`Matter.Bodies.rectangle(x, y, width, height, [options])`

`Matter.Bodies.trapezoid(x, y, width, height, slope, [options])`
</blockquote>

## common modules

* **Engine**: You need engines to update the simulations of your Matter.js world. The Engine module provides different methods and properties that allow you to control the behavior of different engines.
* **World**: This module provides you with methods and properties to create and manipulate whole worlds at once. The World is actually a Composite body with additional properties like gravity and bounds.
* **Bodies**: The Bodies module contains different methods to help you create rigid bodies with common shapes like a circle, rectangle or trapezium.
* **Body**: This module provides you different methods and properties to create and manipulate the rigid bodies that you have created using the functions from the Bodies module. This module allows you to scale, rotate or translate individual bodies. It also has functions to let you specify the velocity, density or inertia of different bodies. Because of so many functions, the third tutorial in this series only discusses the methods and properties available in the Body module.
* **Composites**: Just like the Bodies module, this module contains different methods that you can use to create composite bodies with common configurations. For example, you can create a stack or pyramid of rectangular boxes using just a single method with the help of Composites module.
* **Composite**: The Composite module has methods and properties that allow you to create and manipulate composite bodies. You can read more about the Composite and Composites modules in the fourth tutorial of the series.
* **Constraint**: This module allows you to create and manipulate constraints. You can use a constraint to make sure that two bodies or a fixed world-space point and a body maintain a fixed distance. It is similar to connecting two bodies through a steel rod. You can modify the stiffness of these constraints so that the rod starts acting more like springs. Matter.js uses constraints when creating a Newton's cradle or a chain composite.
* **MouseConstraint**: This module provides you with methods and properties that let you create and manipulate mouse constraints. This is helpful when you want different bodies in the world to interact with the user. 

## codepens

[Matter.js Demo](https://codepen.io/bsanie/pen/ybJdJd) by Blake Sanie