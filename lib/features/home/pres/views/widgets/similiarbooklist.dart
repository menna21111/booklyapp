import 'package:booklyapp/features/home/pres/views/widgets/CustomListitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/simailar_books_cubit/similiarbookstate.dart';
import '../../manager/simailar_books_cubit/similirbookcubit.dart';

class Similiarbooklist extends StatelessWidget {
  const Similiarbooklist({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Similirbookcubit, Similiarbookstate>(
        builder: (context, State) {
      if (State is SimiliarbooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .15,
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: State.books.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return  Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Customlistitem(
                  imageurl:State.books[index].volumeInfo.imageLinks?.thumbnail??'',
                      // 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAFwAXAMBEQACEQEDEQH/xAAbAAEAAwEBAQEAAAAAAAAAAAAABAUGAwIHAf/EADwQAAIBAwIDBAcFBQkAAAAAAAECAwAEEQUhBhIxE0FRYRQiMnGBkcEjUqGx4QcV0fDxMzRCQ1NicoKS/8QAGwEAAQUBAQAAAAAAAAAAAAAAAAIDBAUGAQf/xAAwEQACAQMDAQYFBAMBAAAAAAAAAQIDBBESITEFE0FRYXGRIjKBscEGFKHwI0JDM//aAAwDAQACEQMRAD8A6VqjOigBQAoA8yyJFGZJXVEHUscCuSkorLex2MXJ4XJFXU7djhCzeeMfnUOV/SXGWS42VVrfY6i7iPtEr5sKVC+oy2zj1EztKse7J3BBAIOQelS85IwoOCgBQAoAUAKAFAFHrGvJZ3Po0ZAYe25GcHwFV11eOEtEOSfbWinHXPgqdXubjUBA9ms95y5HZxrkk4zkKBvsDv8ArVbWuJ1N5vgsKVCMH8C5KpdZ9Gcw3umzRMOoMjI3/kimNaH+zl4E2DWlikVB6QgcZCzIFyPIjY/L411TT4OOElyi8tdQCYkiOUO7xfUedS7e6lRfkRa9tGqvMvI3WRFdDlWGQR4VexkpLKKVpxeGeq6cFACgBQAoAEhQSegGTXG8LLOpZeD5Rq873N/tk8xLsB1ySc/QVmJSy3JmihHCUUfTf2eaQ+m2pvr3+9Tj1U/01/iara9xreFwW1C27NZfJtuaKbHaIr4+8M0xqHsNEpYLWeEwz28UkR6o6AilxaGpZMlxZwhptvYyanpFikVxagytFFsJUHtDl6ZxuPMY76fp1XCWHwM1KfaLPeUHDl3Hc2r9i4eMNzRkfdPd8wa0/TqmqDj4GZv4YmpeJbVYEEUAKAFACgCNqRcWFwYlLP2ZACjJ3pm4z2UtPOB2jjtI54KbgfQADc3l7EDKjPCQd8DasldalLQayyUXHWcpbniDiG7K2LtY2PNyoTlSw8fE/gKb1UqPdljumvX79MTd6BZz2GnxW9xcPcSL1kfqajTnrlqxgkwp9nHTnJW6tovEEd/NqOkakXDtzejysV5fIHpjyIqRTrR06ZRItShJy1RkXHC2sXWqQ3FtqdnLb3dtgSB05QwOcY7j0PTakVoxW8HsxVKUs4mt0YDhWy9E1LV4ojiCC6kgVfDldvpWj6Um05ehnuptJqPmzS1cFSKAFACgBQB+SOsUUkr+zGhY476h39y7ag6i57id060V3cxpPjl+h74PZp7O+dxjnui2P+q1k61R1Upy5aNXQoqlKUI8J7H7c8MzXWsenpqcsCBVVYo1BGBvvnIpqFdwjpSQ9Utozlqk3n7GvghjdRhhTaSYppoiazoX70EQ9PuLYRZwsQQhie8hlOf1NPU5uHykedOM/mJen2j2Onw20tw1w8YI7VlClhnbbyGB8KTUeXkVGGNjBaPbxela8VRkdr+WaM5JDAEBvx5jVv0+8dKtGg+JffuKq/sVVt53C5i/47/yS60xmRQAoAUAKAPx1Ekbxt7LqVNQ7+2dzQlTXPd6k7p11+1uY1Xx3+hC0fWrTSLu7sbtxGvZmcMfLAx9fhWYqW84xjFrdbYNPSu6cqk5J/C90z3r/FsOlpGqMrvKOZSDkBfHbrUSlbuo25PCJdxdxopKO7M7Bxld9pcTRM86xRlwsSOGH/IdAPOnalpHbTL3GqXUZYanDPoXmgftHiYRpqLL63UoCOX57H8KW7XC+FjSvdUvjW3kbW616yhgR2uEJkjMkQz7YxkfOo6pzm8YJEqtOCy35mX0e6V9MmYr9tLPL7lVnyfxq7sbGU7mNZ/LH+WUl5fxhayoL5pP2R0rRmcFACgBQAoAUAYXjeN7fVUn/wAFxbsgPgw/qKo+oQcauruZcWM80tPgU+k8zSQST9mYw3J9ogcgDJwM7AVXuClyT41HDhe5qbbXrKO9Ww0yyjjGMysGMYJxnlHL+ZqKrWTzqkTHeRWNEfUgavPo5vltLGx7OWUc1xNKeflwDhVBJA3wSfKnadKf+79hqpVh/wA17kFLt4kSKSTmKADO/d0xUhbEY3mlwNbWEMbjD45n953P51o7an2dKMWUFxPtKrkiVTwyKAFACgBQAoArdf0qPV9PaBm5JVPPE/3W8/LuqPc0FXhp7+4foVnSnnu7z5tcQ3emTNZ3kTxSA8wDDr5jxHnWexhuPgXcZKSTRGtJmjvC+d85/CuZFHTti9zJOW3Hf4V1bs62kanhjQLmeeK+1CKSK3HrxK6kGXwI/wBvn31NsbdVZa3wvuQry4UI6I8s29XhTigBQAoAUAKAB2Ge6hjFevGksvk5Rai9ncCVI45Mbcj9/uPcfOoN/au6oOkpOOe9f3gatOozp1VOUU14ELW7nS9aQx3fKmdwlz6vKfFX6D5isO+l3/T56oLK8Vv7rk2NHqFrcxxn3MlecIxW/LLb6hG5P+XkOSPH1f5ODVhaXNeu2uxe30+4VnRp4zNLP97jf8K8I8LaOY724vYb+YAOgkKyBT94Iud/f02xvuYHadSvFop03Fej+7E1a9tb71Jr3NTqWqpf27W1va5jI/tJhjHmo7vfVx0rotS1qKtVnh+C/Jn+o9aVWDpW8c+b/CKGaydFyoNapTTKelfzi1GuvqRKWWooAUAKAFAHi9PZgIOoG9ITzuUlw9dXJAhxKhYeJHyoEzzF4PElmsh3ANGEKjWceCz4ftY4bkFNL9Mbto9u5eu/9apOppdqv8/Z/C/Df38PLffYubCrKVHenr+L29vHz22JsEYF24xsGOPnVtF/4l6IoJb3EvVlquFXNNkp4SyQI70G5lhJymflTrhtlckLtHj4vlZFvE5Jcjoadi8otOnVXKm6b5j9jhSiwFACgDpAheTYEhfWbyH84pFSait+8TUbUG0QbyTmLuffQlhFCnqkctOTks489Xy5+JzQjtxLNR+WxKAFdGMnaFnjOY3ZD4qSKaq0KVXHaQTx4pMXC5rUk1Tm1nweC20SXT0nk/eSk5UGM+t17+nwqs6pHqD0Kz43zx5Y5+pYdKl09KcrvnbHPnng0C3OicmVgLD3H6mqvsOsv/bH1X4Rc/uej6cqOV6P8mJnCx6rK0YISTDLnw6fStXDOhauTKzcZw+DhN49O4lzK00RKgkqOY4HcOprmpR5Hemzf7jC719iHThfigBQBfcJAek3LY3EQHzP6Vmv1PJqhBLx/BZ9LSc5ehZ3+n2UkErPZ25bB37MVi11a+prEar9yzdhayeXTXsYUbBQoAAGwHdXqlP5Eec1f/SXqzotLGWdUoEM9E/aJ8aAXyslROwGAdqS0mM6mtkW2g2tvcO5uLeOUqQAXXOKy36jvbi2nTVGbWc5/g1f6btqNenU7WKeGuTTPbwR2M8cUMcatEwIRQM7Vnqd3Xq1oSnJtprl+ZqFbUaVOSpxS27kfNx0r08zaFcA/9k=',
                ),
              );
            },
          ),
        );
      } else if (State is SimiliarbooksFailure) {
        return Text(State.errMessage);
      } else {
        return Center(child: CircularProgressIndicator());
      }
    });
  }
}
