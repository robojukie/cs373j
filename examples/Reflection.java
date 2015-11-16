// ---------------
// Reflection.java
// ---------------

abstract class A  {
    public abstract String f ();}

class B extends A {
    public String f () {
        return "B.f()";}}

class C extends A {
    public String f () {
        return "C.f()";}}

final class Reflection {
    public static void main (String[] args) {
        System.out.println("Reflection.java");

        try {
            A x = (A) Class.forName("B").newInstance();
            assert x.f().equals("B.f()");}
        catch (ClassCastException e) {
            assert false;}
        catch (ClassNotFoundException e) {
            assert false;}
        catch (IllegalAccessException e) {
            assert false;}
        catch (InstantiationException e) {
            assert false;}

        try {
            A x = (A) Class.forName("C").newInstance();
            assert x.f().equals("C.f()");}
        catch (ClassCastException e) {
            assert false;}
        catch (ClassNotFoundException e) {
            assert false;}
        catch (IllegalAccessException e) {
            assert false;}
        catch (InstantiationException e) {
            assert false;}

        System.out.println("Done.");}}
