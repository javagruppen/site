---
layout: post
title: Kubernetes & Apache Camel microservices gå-hjem møde den 11. okt hos Systematic i Aarhus
tags: [Training, Session, Jpa, Hibernate]
---

<p align="center">
"Agile Integration with Apache Camel microservices in containers on Kubernetes"<br>
&<br>
"Get started with High Available Kubernetes cluster"
</p>

11\. Oktober fra kl. 16.30-19.00 hos Systematic  
Søren Frichs Vej 39, 8000 Aarhus C

Vi er rigtig glade for at vi kunne få Helge Tesgaard til at komme og fortælle om, hvordan man sætter et High Available Kubernetes cluster op. Claus Ibsen har gæstet javagruppen en del gange og vi er rigtig glade for, at han denne gang kommer og fortæller om Apache Camel Miroservices i Kubernetes.

Der vil blive serveret en sandwich og vand efter præsentationen og derefter mulighed for at netværke med andre Java folk

# Agenda

1. Get started with High Available Kubernetes cluster - Helge Tesgaard
2. Agile Integration with Apache Camel microservices in containers on Kubernetes - Claus Ibsen
3. Sandwich
4. Tilmelding er nødvendig via Eventbrite

Med javagruppe hilsner

Flemming Harms

# Helge Tesgaard (Freelance consultant, 7N)

![](/assets/img/speakers/helgetesgaard.jpg)

The talk will show how a pure open source on-premise High Available Kubernetes cluster can be established. 
Before jumping into the shell, the talk will address the various components in a Kubernetes cluster. We will go through some of the common deployment abstractions available to the user. 

Kubernetes can be installed in various ways. This talk will show how an on-premise High Available Kubernetes cluster can be established using Kubespray/Ansible. The the demo will be using Vagrant to provide a virtual environment acting as physical servers. 
With the cluster running, Gitlab runners will be configured to show how Gitlab can be integrated into a full blown open source CI/CD solution. We will use the Docker registry provided by Gitlab to pull the custom build Docker images.  
 
If the time allows, we might dive into how the cluster can be monitored using ELK or similar. 
 
This presentation is a 50/50 mix between slides and demo.
 
# Claus Ibsen (Red Hat)
![](/assets/img/speakers/clausIbsen.jpg)

Claus Ibsen works full time at Red Hat on open source integration software, such as Apache Camel, ActiveMQ, fabric8, hawtio and author of the Camel in Action book. Claus is very active in the communities, where he help others, blogs, writes, and tweet as well.

How to get started developing Camel microservices (or any Java technology for that matter) on a local Kubernetes cluster from zero to deployment.

As a Java developer it may be daunting to know how to get started how to develop container applications that runs on Kubernetes cluster. 

Using minikube its very easy to run a local cluster and with the help of fabric8 tooling its even easier to install and run using familiar tools like Maven. In this talk we will build a set of Apache Camel and Java based Microservices that uses Spring Boot and WildFly Swarm. With the help of fabric8 maven tooling you will see how to build, deploy, and run your Java projects on a Kubernetes cluster (local or remote). And even live debugging is easy to do as well. 

We will discuss practices how to build distributed and fault tolerant microservices using technologies such as Kubernetes Services, Netflix Hysterix, and Camel EIP patterns for fault tolerance. In the talk you will also hear about related open source projects where you can go explore more such as fabric8, openshift.io, istio, etc. This presentation is a 50/50 mix between slides and demo.