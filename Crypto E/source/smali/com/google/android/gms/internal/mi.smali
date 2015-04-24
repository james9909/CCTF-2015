.class public Lcom/google/android/gms/internal/mi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/mi$e;,
        Lcom/google/android/gms/internal/mi$c;,
        Lcom/google/android/gms/internal/mi$d;,
        Lcom/google/android/gms/internal/mi$b;,
        Lcom/google/android/gms/internal/mi$a;
    }
.end annotation


# static fields
.field public static final Zg:Lcom/google/android/gms/internal/mi$a;

.field public static final Zh:Lcom/google/android/gms/internal/mi$b;

.field public static final Zi:Lcom/google/android/gms/internal/mi$d;

.field public static final Zj:Lcom/google/android/gms/internal/mi$c;

.field public static final Zk:Lcom/google/android/gms/internal/mi$e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v3, 0x3e8fa0

    new-instance v0, Lcom/google/android/gms/internal/mi$a;

    const-string v1, "created"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/mi$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mi;->Zg:Lcom/google/android/gms/internal/mi$a;

    new-instance v0, Lcom/google/android/gms/internal/mi$b;

    const-string v1, "lastOpenedTime"

    const v2, 0x419ce0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mi$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mi;->Zh:Lcom/google/android/gms/internal/mi$b;

    new-instance v0, Lcom/google/android/gms/internal/mi$d;

    const-string v1, "modified"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/mi$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mi;->Zi:Lcom/google/android/gms/internal/mi$d;

    new-instance v0, Lcom/google/android/gms/internal/mi$c;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/mi$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mi;->Zj:Lcom/google/android/gms/internal/mi$c;

    new-instance v0, Lcom/google/android/gms/internal/mi$e;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/mi$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/mi;->Zk:Lcom/google/android/gms/internal/mi$e;

    return-void
.end method
