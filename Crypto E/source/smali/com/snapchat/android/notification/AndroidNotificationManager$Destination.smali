.class public final enum Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/notification/AndroidNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Destination"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;

.field private static final synthetic b:[Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    new-instance v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;

    const-string v1, "ADD_FRIENDS"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;->a:Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;

    sget-object v1, Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;->a:Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;

    aput-object v1, v0, v2

    sput-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;->b:[Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;
    .locals 1
    .parameter

    .prologue
    .line 75
    const-class v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;->b:[Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;

    invoke-virtual {v0}, [Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;

    return-object v0
.end method
