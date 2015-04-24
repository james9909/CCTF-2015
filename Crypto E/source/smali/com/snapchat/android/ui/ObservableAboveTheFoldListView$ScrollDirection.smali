.class final enum Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/ObservableAboveTheFoldListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ScrollDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

.field public static final enum b:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

.field private static final synthetic c:[Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

    const-string v1, "UP"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;->a:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

    .line 58
    new-instance v0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;->b:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

    sget-object v1, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;->a:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;->b:Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;->c:[Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;
    .locals 1
    .parameter

    .prologue
    .line 56
    const-class v0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;->c:[Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

    invoke-virtual {v0}, [Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/ui/ObservableAboveTheFoldListView$ScrollDirection;

    return-object v0
.end method
