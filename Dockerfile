FROM java:7
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN. javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
./src/HelloWorld.java:
public class HelloWorld
{
public static void main (String [] args)
{
System.out.println("hello world");
}
}
Initialize this directory as a git repo, point it at your new GitHub repo, and push:
git init
git remote add origin <your GitHub repo>
git add *
git commit -m 'first post'
git push origin master
