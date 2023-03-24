<article>
  <h1>Flutter First Contribution 🚀</h1>
  <p>Welcome to the Flutter First Contribution project! This is an open-source project that aims to help beginners learn how to contribute to open-source projects. 🎓</p>
   <p>Before making any contributions, please read our this Documentation</p>
  <h2>Introduction</h2>
  <p>Flutter is an open-source mobile application development framework created by Google. This project provides an opportunity for beginners to make contributions to a Flutter project and learn how to use Git and Github in the process. 💪</p>
  <p>The goal of this project is to make it easy for beginners to contribute, and to give them a chance to showcase their profiles in the contributors' page. ✨</p>
  <h2>Getting Started</h2>
  <p>To get started with contributing to this project, you will need to follow the steps below:</p>
  <ol>
    <li>Fork this repository by clicking the "Fork" button at the top of the page. 🍴</li>
    <li>Clone the forked repository to your local machine using Git. 💻</li>
    <li>Create a new branch on your local machine for the feature or bug fix that you want to work on. 🌱</li>
    <li>Make changes to the code in your local branch. 🔧</li>
    <li>Commit the changes and push them to your forked repository. 🚀</li>
    <li>Create a pull request from your branch to the main branch of this repository. 👥</li>
  </ol>
  <h2>Contributing</h2>
  <p>We welcome contributions from everyone, regardless of skill level. If you're a beginner, we encourage you to start with something simple, like fixing a typo in the documentation or adding a new widget. If you're more experienced, feel free to tackle a larger feature or bug fix.</p>

<p>To add your profile information to the contributors' page, you can edit the <code>contributor_data.dart</code> file located in the <code>data</code> folder. This file contains a list of contributors in the form of a <code>Contributor</code> object, which includes fields such as <code>name</code>, <code>avatarUrl</code>, and <code>githubUrl</code>.</p>

<p>To add your profile information to the contributors' page, you can edit the <code>contributor_data.dart</code> file located in the <code>data</code> folder. This file contains a list of contributors in the form of a <code>Contributor</code> object, which includes fields such as <code>name</code>, <code>imageUrl</code>, <code>profileUrl</code>, and <code>chipDataString</code>.</p>

<p>To add your own profile, simply create a new <code>Contributor</code> object and add it to the list. Make sure to include your name, a link to your avatar image, a link to your Github profile, and any relevant skills or tags you'd like to display. Here's an example of what your constructor might look like:</p>

<pre>
<code>
Contributors(
  name: "Your Name",
  imageUrl: "link to your avatar image", //Do Not add assets provide the url of the photo.
  profileUrl: "link to your Github profile", 
  chipDataString: ["skill1", "skill2", "skill3"] // 5 chips are only visible at most
),
</code>
</pre>

<p>Make sure to replace the values in the example with your own information!</p>


<p align="center"> 
  Visitor count<br>
  <img src="https://profile-counter.glitch.me/flutter-first-contribution/count.svg" />
</p>

</article>
