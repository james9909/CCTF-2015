.class public final Lcrittercism/android/cy;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v0, Lcrittercism/android/cy;->a:Ljava/util/Map;

    const-string v1, "com.amazon.venezia"

    new-instance v2, Lcrittercism/android/cx$a$a;

    invoke-direct {v2}, Lcrittercism/android/cx$a$a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcrittercism/android/cy;->a:Ljava/util/Map;

    const-string v1, "com.android.vending"

    new-instance v2, Lcrittercism/android/cx$b$a;

    invoke-direct {v2}, Lcrittercism/android/cx$b$a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-void
.end method
