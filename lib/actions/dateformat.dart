import 'package:date_format/date_format.dart';
class DateFormat {
    static String nowdateFormat(){
        return formatDate(DateTime.now(), [yyyy,'-',mm,'-',dd,'T',HH,':',mm,':',ss,z]);
    }

    static String currentdateFormat(String currentdatestr){
        var currentdate = DateTime.parse(currentdatestr);

        return formatDate(currentdate, [yyyy,'-',mm,'-',dd]);
    }
    static String getDate(String datestr){
        // 现在日期
        var today = DateTime.now();
        // 今日的23：59：59
        var standardDate = DateTime(today.year,today.month,today.day,23,59,59);
        // 传入日期与今天的23：59：59比较
        Duration diff = standardDate.difference(DateTime.parse(datestr));
        if (diff < Duration(days: 1)) {
            return "今天";
        } else if (diff >= Duration(days:1) && diff < Duration(days:2)){
            return "昨天";
        } else {
            return datestr;
        }
    }
}