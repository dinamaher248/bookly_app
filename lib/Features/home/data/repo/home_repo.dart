import 'package:bookly_app/Features/home/data/models/book_model.dart';
import 'package:bookly_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo { // هنا بحدد انا جوا الفيتشر دي بعمل اي 
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure,List<BookModel>>>  fetchBestSellerBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks();
 }

//Either هو نوع من أنواع الدارتز اللي بيساعدني في التعامل مع الأخطاء والنتائج بشكل أفضل
//Either --> it return two types of values
//Left --> it return error    
//Right --> it return success value