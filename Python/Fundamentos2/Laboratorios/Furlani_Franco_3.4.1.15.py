import math


class Point:
    def __init__(self, x=0.0, y=0.0):
        self.__x = x
        self.__y = y

    def get_x(self):
        return self.__x

    def get_y(self):
        return self.__y


class Triangle:
    def __init__(self, vertice1, vertice2, vertice3):
        self.__vertices = [vertice1, vertice2, vertice3]

    def perimeter(self):
        side1 = math.sqrt((self.__vertices[0].get_x() - self.__vertices[1].get_x()) ** 2 + (
            self.__vertices[0].get_y() - self.__vertices[1].get_y()) ** 2)
        side2 = math.sqrt((self.__vertices[1].get_x() - self.__vertices[2].get_x()) ** 2 + (
            self.__vertices[1].get_y() - self.__vertices[2].get_y()) ** 2)
        side3 = math.sqrt((self.__vertices[2].get_x() - self.__vertices[0].get_x()) ** 2 + (
            self.__vertices[2].get_y() - self.__vertices[0].get_y()) ** 2)
        return side1 + side2 + side3


triangle = Triangle(Point(0, 0), Point(1, 0), Point(0, 1))
print(triangle.perimeter())
