.class public Lcom/snapchat/android/api2/cash/square/data/CashCustomization;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mStatementDesc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statement_description"
    .end annotation
.end field

.field private final mSubject:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subject"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/square/data/CashCustomization;->mSubject:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/snapchat/android/api2/cash/square/data/CashCustomization;->mStatementDesc:Ljava/lang/String;

    .line 17
    return-void
.end method
