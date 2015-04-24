.class public Lcom/crittercism/app/CritterUserData;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;

.field private final b:Z


# direct methods
.method constructor <init>(Ljava/util/Map;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/crittercism/app/CritterUserData;->a:Ljava/util/Map;

    .line 15
    iput-boolean p2, p0, Lcom/crittercism/app/CritterUserData;->b:Z

    .line 16
    return-void
.end method
