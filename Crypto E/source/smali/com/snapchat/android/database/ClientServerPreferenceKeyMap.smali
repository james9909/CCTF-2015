.class public Lcom/snapchat/android/database/ClientServerPreferenceKeyMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/snapchat/android/database/ClientServerPreferenceKeyMap$1;

    invoke-direct {v0}, Lcom/snapchat/android/database/ClientServerPreferenceKeyMap$1;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/ClientServerPreferenceKeyMap;->a:Ljava/util/HashMap;

    .line 19
    new-instance v0, Lcom/snapchat/android/database/ClientServerPreferenceKeyMap$2;

    invoke-direct {v0}, Lcom/snapchat/android/database/ClientServerPreferenceKeyMap$2;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/ClientServerPreferenceKeyMap;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
