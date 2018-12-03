extern void __VERIFIER_error() __attribute__ ((__noreturn__));
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef int __kernel_pid_t;
typedef __kernel_long_t __kernel_suseconds_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef unsigned int oom_flags_t;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct hlist_node;
struct hlist_head {
   struct hlist_node *first ;
};
struct hlist_node {
   struct hlist_node *next ;
   struct hlist_node **pprev ;
};
struct callback_head {
   struct callback_head *next ;
   void (*func)(struct callback_head * ) ;
};
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
struct __anonstruct_ldv_1022_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_1037_10 {
   u16 limit0 ;
   u16 base0 ;
   unsigned char base1 ;
   unsigned char type : 4 ;
   unsigned char s : 1 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   unsigned char limit : 4 ;
   unsigned char avl : 1 ;
   unsigned char l : 1 ;
   unsigned char d : 1 ;
   unsigned char g : 1 ;
   unsigned char base2 ;
};
union __anonunion_ldv_1038_8 {
   struct __anonstruct_ldv_1022_9 ldv_1022 ;
   struct __anonstruct_ldv_1037_10 ldv_1037 ;
};
struct desc_struct {
   union __anonunion_ldv_1038_8 ldv_1038 ;
};
typedef unsigned long pteval_t;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct __anonstruct_pte_t_11 {
   pteval_t pte ;
};
typedef struct __anonstruct_pte_t_11 pte_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_12 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_12 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct task_struct;
struct cpumask;
struct arch_spinlock;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_1458_15 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_1458_15 ldv_1458 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct device;
struct file_operations;
struct completion;
struct pid;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct timespec;
struct kernel_vm86_regs {
   struct pt_regs pt ;
   unsigned short es ;
   unsigned short __esh ;
   unsigned short ds ;
   unsigned short __dsh ;
   unsigned short fs ;
   unsigned short __fsh ;
   unsigned short gs ;
   unsigned short __gsh ;
};
union __anonunion_ldv_2998_20 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2998_20 ldv_2998 ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct seq_operations;
struct i387_fsave_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u32 status ;
};
struct __anonstruct_ldv_5289_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5295_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5296_24 {
   struct __anonstruct_ldv_5289_25 ldv_5289 ;
   struct __anonstruct_ldv_5295_26 ldv_5295 ;
};
union __anonunion_ldv_5305_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5296_24 ldv_5296 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5305_27 ldv_5305 ;
};
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   u32 entry_eip ;
};
struct ymmh_struct {
   u32 ymmh_space[64U] ;
};
struct lwp_struct {
   u8 reserved[128U] ;
};
struct bndregs_struct {
   u64 bndregs[8U] ;
};
struct bndcsr_struct {
   u64 cfg_reg_u ;
   u64 status_reg ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
   struct lwp_struct lwp ;
   struct bndregs_struct bndregs ;
   struct bndcsr_struct bndcsr ;
};
union thread_xstate {
   struct i387_fsave_struct fsave ;
   struct i387_fxsave_struct fxsave ;
   struct i387_soft_struct soft ;
   struct xsave_struct xsave ;
};
struct fpu {
   unsigned int last_cpu ;
   unsigned int has_fpu ;
   union thread_xstate *state ;
};
struct kmem_cache;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
   unsigned char fpu_counter ;
};
typedef atomic64_t atomic_long_t;
struct lockdep_map;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
} __attribute__((__packed__)) ;
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct held_lock {
   u64 prev_chain_key ;
   unsigned long acquire_ip ;
   struct lockdep_map *instance ;
   struct lockdep_map *nest_lock ;
   u64 waittime_stamp ;
   u64 holdtime_stamp ;
   unsigned short class_idx : 13 ;
   unsigned char irq_context : 2 ;
   unsigned char trylock : 1 ;
   unsigned char read : 2 ;
   unsigned char check : 1 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 12 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_6346_31 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6347_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6346_31 ldv_6346 ;
};
struct spinlock {
   union __anonunion_ldv_6347_30 ldv_6347 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_32 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_32 rwlock_t;
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_34 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_34 kuid_t;
struct __anonstruct_kgid_t_35 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_35 kgid_t;
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   kuid_t uid ;
   kgid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_36 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_36 nodemask_t;
struct optimistic_spin_queue;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   struct optimistic_spin_queue *osq ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct pci_dev;
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
struct workqueue_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
   struct workqueue_struct *wq ;
   int cpu ;
};
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device * ) ;
   void (*complete)(struct device * ) ;
   int (*suspend)(struct device * ) ;
   int (*resume)(struct device * ) ;
   int (*freeze)(struct device * ) ;
   int (*thaw)(struct device * ) ;
   int (*poweroff)(struct device * ) ;
   int (*restore)(struct device * ) ;
   int (*suspend_late)(struct device * ) ;
   int (*resume_early)(struct device * ) ;
   int (*freeze_late)(struct device * ) ;
   int (*thaw_early)(struct device * ) ;
   int (*poweroff_late)(struct device * ) ;
   int (*restore_early)(struct device * ) ;
   int (*suspend_noirq)(struct device * ) ;
   int (*resume_noirq)(struct device * ) ;
   int (*freeze_noirq)(struct device * ) ;
   int (*thaw_noirq)(struct device * ) ;
   int (*poweroff_noirq)(struct device * ) ;
   int (*restore_noirq)(struct device * ) ;
   int (*runtime_suspend)(struct device * ) ;
   int (*runtime_resume)(struct device * ) ;
   int (*runtime_idle)(struct device * ) ;
};
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
   struct list_head clock_list ;
};
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool is_noirq_suspended ;
   bool is_late_suspended ;
   bool ignore_children ;
   bool early_init ;
   bool direct_complete ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
   bool syscore ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char idle_notification : 1 ;
   unsigned char request_pending : 1 ;
   unsigned char deferred_resume : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char runtime_auto : 1 ;
   unsigned char no_callbacks : 1 ;
   unsigned char irq_safe : 1 ;
   unsigned char use_autosuspend : 1 ;
   unsigned char timer_autosuspends : 1 ;
   unsigned char memalloc_noio : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   void (*set_latency_tolerance)(struct device * , s32 ) ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct pci_bus;
struct __anonstruct_mm_context_t_101 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_101 mm_context_t;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
} __attribute__((__aligned__(sizeof(long )))) ;
struct rb_root {
   struct rb_node *rb_node ;
};
struct vm_area_struct;
struct nsproxy;
struct cred;
struct inode;
struct arch_uprobe_task {
   unsigned long saved_scratch_register ;
   unsigned int saved_trap_nr ;
   unsigned int saved_tf ;
};
enum uprobe_task_state {
    UTASK_RUNNING = 0,
    UTASK_SSTEP = 1,
    UTASK_SSTEP_ACK = 2,
    UTASK_SSTEP_TRAPPED = 3
} ;
struct __anonstruct_ldv_14006_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct_ldv_14010_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion_ldv_14011_135 {
   struct __anonstruct_ldv_14006_136 ldv_14006 ;
   struct __anonstruct_ldv_14010_137 ldv_14010 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion_ldv_14011_135 ldv_14011 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct address_space;
union __anonunion_ldv_14120_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion_ldv_14126_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_14136_144 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_14138_143 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14136_144 ldv_14136 ;
   int units ;
};
struct __anonstruct_ldv_14140_142 {
   union __anonunion_ldv_14138_143 ldv_14138 ;
   atomic_t _count ;
};
union __anonunion_ldv_14142_141 {
   unsigned long counters ;
   struct __anonstruct_ldv_14140_142 ldv_14140 ;
   unsigned int active ;
};
struct __anonstruct_ldv_14143_139 {
   union __anonunion_ldv_14126_140 ldv_14126 ;
   union __anonunion_ldv_14142_141 ldv_14142 ;
};
struct __anonstruct_ldv_14150_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_14155_145 {
   struct list_head lru ;
   struct __anonstruct_ldv_14150_146 ldv_14150 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion_ldv_14161_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion_ldv_14120_138 ldv_14120 ;
   struct __anonstruct_ldv_14143_139 ldv_14143 ;
   union __anonunion_ldv_14155_145 ldv_14155 ;
   union __anonunion_ldv_14161_147 ldv_14161 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_149 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_148 {
   struct __anonstruct_linear_149 linear ;
   struct list_head nonlinear ;
};
struct anon_vma;
struct vm_operations_struct;
struct mempolicy;
struct vm_area_struct {
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   struct rb_node vm_rb ;
   unsigned long rb_subtree_gap ;
   struct mm_struct *vm_mm ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   union __anonunion_shared_148 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   struct mempolicy *vm_policy ;
};
struct core_thread {
   struct task_struct *task ;
   struct core_thread *next ;
};
struct core_state {
   atomic_t nr_threads ;
   struct core_thread dumper ;
   struct completion startup ;
};
struct task_rss_stat {
   int events ;
   int count[3U] ;
};
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct kioctx_table;
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   u32 vmacache_seqnum ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long mmap_legacy_base ;
   unsigned long task_size ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   atomic_long_t nr_ptes ;
   int map_count ;
   spinlock_t page_table_lock ;
   struct rw_semaphore mmap_sem ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long pinned_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
   unsigned long def_flags ;
   unsigned long start_code ;
   unsigned long end_code ;
   unsigned long start_data ;
   unsigned long end_data ;
   unsigned long start_brk ;
   unsigned long brk ;
   unsigned long start_stack ;
   unsigned long arg_start ;
   unsigned long arg_end ;
   unsigned long env_start ;
   unsigned long env_end ;
   unsigned long saved_auxv[46U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct kioctx_table *ioctx_table ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   bool tlb_flush_pending ;
   struct uprobes_state uprobes_state ;
};
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
union __anonunion_ldv_14524_153 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion_ldv_14524_153 ldv_14524 ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   int layers ;
   int cur ;
   spinlock_t lock ;
   int id_free_cnt ;
   struct idr_layer *id_free ;
};
struct ida_bitmap {
   long nr_busy ;
   unsigned long bitmap[15U] ;
};
struct ida {
   struct idr idr ;
   struct ida_bitmap *free_bitmap ;
};
struct dentry;
struct iattr;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_root;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_node;
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_ops;
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
};
union __anonunion_ldv_14668_154 {
   struct kernfs_elem_dir dir ;
   struct kernfs_elem_symlink symlink ;
   struct kernfs_elem_attr attr ;
};
struct kernfs_node {
   atomic_t count ;
   atomic_t active ;
   struct lockdep_map dep_map ;
   struct kernfs_node *parent ;
   char const *name ;
   struct rb_node rb ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion_ldv_14668_154 ldv_14668 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_syscall_ops {
   int (*remount_fs)(struct kernfs_root * , int * , char * ) ;
   int (*show_options)(struct seq_file * , struct kernfs_root * ) ;
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   unsigned int flags ;
   struct ida ino_ida ;
   struct kernfs_syscall_ops *syscall_ops ;
   struct list_head supers ;
   wait_queue_head_t deactivate_waitq ;
};
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   void *priv ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   size_t atomic_write_len ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   size_t atomic_write_len ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   int (*mmap)(struct kernfs_open_file * , struct vm_area_struct * ) ;
   struct lock_class_key lockdep_key ;
};
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   bool (*current_may_mount)(void) ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct bin_attribute;
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
   struct bin_attribute **bin_attrs ;
};
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute * , struct vm_area_struct * ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
};
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned char state_initialized : 1 ;
   unsigned char state_in_sysfs : 1 ;
   unsigned char state_add_uevent_sent : 1 ;
   unsigned char state_remove_uevent_sent : 1 ;
   unsigned char uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *argv[3U] ;
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset * , struct kobject * ) ;
   char const *(* const name)(struct kset * , struct kobject * ) ;
   int (* const uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_15343_155 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_15343_155 ldv_15343 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   void *elem ;
};
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
   struct completion *kobj_completion ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2,
    MODULE_STATE_UNFORMED = 3
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct tracepoint;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   bool sig_ok ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const *tracepoints_ptrs ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct mem_cgroup;
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   unsigned int stat[26U] ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct memcg_cache_params;
struct kmem_cache_node;
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int object_size ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   struct memcg_cache_params *memcg_params ;
   int max_attr_size ;
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct __anonstruct_ldv_15963_157 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct_ldv_15969_158 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion_ldv_15970_156 {
   struct __anonstruct_ldv_15963_157 ldv_15963 ;
   struct __anonstruct_ldv_15969_158 ldv_15969 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_15970_156 ldv_15970 ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct vb2_queue;
struct v4l2_fh;
struct v4l2_format;
struct v4l2_buffer;
struct v4l2_event_subscription;
struct i2c_adapter;
struct v4l2_streamparm;
struct snd_pcm_substream;
struct snd_kcontrol;
struct snd_ctl_elem_value;
typedef unsigned long kernel_ulong_t;
struct pci_device_id {
   __u32 vendor ;
   __u32 device ;
   __u32 subvendor ;
   __u32 subdevice ;
   __u32 class ;
   __u32 class_mask ;
   kernel_ulong_t driver_data ;
};
struct acpi_device_id {
   __u8 id[9U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct path;
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   size_t pad_until ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   struct user_namespace *user_ns ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct pinctrl;
struct pinctrl_state;
struct dev_pin_info {
   struct pinctrl *p ;
   struct pinctrl_state *default_state ;
   struct pinctrl_state *sleep_state ;
   struct pinctrl_state *idle_state ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
struct device_node;
struct iommu_ops;
struct iommu_group;
struct device_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct device_attribute *dev_attrs ;
   struct attribute_group const **bus_groups ;
   struct attribute_group const **dev_groups ;
   struct attribute_group const **drv_groups ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*online)(struct device * ) ;
   int (*offline)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   struct acpi_device_id const *acpi_match_table ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct attribute_group const **dev_groups ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * , kuid_t * , kgid_t * ) ;
   void (*release)(struct device * ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*store)(struct device * , struct device_attribute * , char const * ,
                    size_t ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct acpi_device;
struct acpi_dev_node {
   struct acpi_device *companion ;
};
struct dma_coherent_mem;
struct cma;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type const *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   void *driver_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   struct dev_pin_info *pins ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   unsigned long dma_pfn_offset ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct cma *cma_area ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   struct acpi_dev_node acpi_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
   struct iommu_group *iommu_group ;
   bool offline_disabled ;
   bool offline ;
};
struct wakeup_source {
   char const *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   ktime_t start_prevent_time ;
   ktime_t prevent_sleep_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long expire_count ;
   unsigned long wakeup_count ;
   bool active ;
   bool autosleep_enabled ;
};
struct hotplug_slot;
struct pci_slot {
   struct pci_bus *bus ;
   struct list_head list ;
   struct hotplug_slot *hotplug ;
   unsigned char number ;
   struct kobject kobj ;
};
typedef int pci_power_t;
typedef unsigned int pci_channel_state_t;
enum pci_channel_state {
    pci_channel_io_normal = 1,
    pci_channel_io_frozen = 2,
    pci_channel_io_perm_failure = 3
} ;
typedef unsigned short pci_dev_flags_t;
typedef unsigned short pci_bus_flags_t;
struct pcie_link_state;
struct pci_vpd;
struct pci_sriov;
struct pci_ats;
struct proc_dir_entry;
struct pci_driver;
union __anonunion_ldv_17875_162 {
   struct pci_sriov *sriov ;
   struct pci_dev *physfn ;
};
struct pci_dev {
   struct list_head bus_list ;
   struct pci_bus *bus ;
   struct pci_bus *subordinate ;
   void *sysdata ;
   struct proc_dir_entry *procent ;
   struct pci_slot *slot ;
   unsigned int devfn ;
   unsigned short vendor ;
   unsigned short device ;
   unsigned short subsystem_vendor ;
   unsigned short subsystem_device ;
   unsigned int class ;
   u8 revision ;
   u8 hdr_type ;
   u8 pcie_cap ;
   u8 msi_cap ;
   u8 msix_cap ;
   unsigned char pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   u16 pcie_flags_reg ;
   u8 dma_alias_devfn ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   u8 pm_cap ;
   unsigned char pme_support : 5 ;
   unsigned char pme_interrupt : 1 ;
   unsigned char pme_poll : 1 ;
   unsigned char d1_support : 1 ;
   unsigned char d2_support : 1 ;
   unsigned char no_d1d2 : 1 ;
   unsigned char no_d3cold : 1 ;
   unsigned char d3cold_allowed : 1 ;
   unsigned char mmio_always_on : 1 ;
   unsigned char wakeup_prepared : 1 ;
   unsigned char runtime_d3cold : 1 ;
   unsigned int d3_delay ;
   unsigned int d3cold_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17U] ;
   bool match_driver ;
   unsigned char transparent : 1 ;
   unsigned char multifunction : 1 ;
   unsigned char is_added : 1 ;
   unsigned char is_busmaster : 1 ;
   unsigned char no_msi : 1 ;
   unsigned char block_cfg_access : 1 ;
   unsigned char broken_parity_status : 1 ;
   unsigned char irq_reroute_variant : 2 ;
   unsigned char msi_enabled : 1 ;
   unsigned char msix_enabled : 1 ;
   unsigned char ari_enabled : 1 ;
   unsigned char is_managed : 1 ;
   unsigned char needs_freset : 1 ;
   unsigned char state_saved : 1 ;
   unsigned char is_physfn : 1 ;
   unsigned char is_virtfn : 1 ;
   unsigned char reset_fn : 1 ;
   unsigned char is_hotplug_bridge : 1 ;
   unsigned char __aer_firmware_first_valid : 1 ;
   unsigned char __aer_firmware_first : 1 ;
   unsigned char broken_intx_masking : 1 ;
   unsigned char io_window_1k : 1 ;
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16U] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[17U] ;
   struct bin_attribute *res_attr_wc[17U] ;
   struct list_head msi_list ;
   struct attribute_group const **msi_irq_groups ;
   struct pci_vpd *vpd ;
   union __anonunion_ldv_17875_162 ldv_17875 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
   char *driver_override ;
};
struct pci_ops;
struct msi_chip;
struct pci_bus {
   struct list_head node ;
   struct pci_bus *parent ;
   struct list_head children ;
   struct list_head devices ;
   struct pci_dev *self ;
   struct list_head slots ;
   struct resource *resource[4U] ;
   struct list_head resources ;
   struct resource busn_res ;
   struct pci_ops *ops ;
   struct msi_chip *msi ;
   void *sysdata ;
   struct proc_dir_entry *procdir ;
   unsigned char number ;
   unsigned char primary ;
   unsigned char max_bus_speed ;
   unsigned char cur_bus_speed ;
   char name[48U] ;
   unsigned short bridge_ctl ;
   pci_bus_flags_t bus_flags ;
   struct device *bridge ;
   struct device dev ;
   struct bin_attribute *legacy_io ;
   struct bin_attribute *legacy_mem ;
   unsigned char is_added : 1 ;
};
struct pci_ops {
   int (*read)(struct pci_bus * , unsigned int , int , int , u32 * ) ;
   int (*write)(struct pci_bus * , unsigned int , int , int , u32 ) ;
};
struct pci_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
typedef unsigned int pci_ers_result_t;
struct pci_error_handlers {
   pci_ers_result_t (*error_detected)(struct pci_dev * , enum pci_channel_state ) ;
   pci_ers_result_t (*mmio_enabled)(struct pci_dev * ) ;
   pci_ers_result_t (*link_reset)(struct pci_dev * ) ;
   pci_ers_result_t (*slot_reset)(struct pci_dev * ) ;
   void (*reset_notify)(struct pci_dev * , bool ) ;
   void (*resume)(struct pci_dev * ) ;
};
struct pci_driver {
   struct list_head node ;
   char const *name ;
   struct pci_device_id const *id_table ;
   int (*probe)(struct pci_dev * , struct pci_device_id const * ) ;
   void (*remove)(struct pci_dev * ) ;
   int (*suspend)(struct pci_dev * , pm_message_t ) ;
   int (*suspend_late)(struct pci_dev * , pm_message_t ) ;
   int (*resume_early)(struct pci_dev * ) ;
   int (*resume)(struct pci_dev * ) ;
   void (*shutdown)(struct pci_dev * ) ;
   int (*sriov_configure)(struct pci_dev * , int ) ;
   struct pci_error_handlers const *err_handler ;
   struct device_driver driver ;
   struct pci_dynids dynids ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   nodemask_t nodes_to_scan ;
   int nid ;
};
struct shrinker {
   unsigned long (*count_objects)(struct shrinker * , struct shrink_control * ) ;
   unsigned long (*scan_objects)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   unsigned long flags ;
   struct list_head list ;
   atomic_long_t *nr_deferred ;
};
struct file_ra_state;
struct user_struct;
struct writeback_control;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
   unsigned long max_pgoff ;
   pte_t *pte ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   void (*map_pages)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   char const *(*name)(struct vm_area_struct * ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
};
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
struct dma_map_ops {
   void *(*alloc)(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
   void (*free)(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs * ) ;
   int (*get_sgtable)(struct device * , struct sg_table * , void * , dma_addr_t ,
                      size_t , struct dma_attrs * ) ;
   dma_addr_t (*map_page)(struct device * , struct page * , unsigned long , size_t ,
                          enum dma_data_direction , struct dma_attrs * ) ;
   void (*unmap_page)(struct device * , dma_addr_t , size_t , enum dma_data_direction ,
                      struct dma_attrs * ) ;
   int (*map_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                 struct dma_attrs * ) ;
   void (*unmap_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                    struct dma_attrs * ) ;
   void (*sync_single_for_cpu)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_single_for_device)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_sg_for_cpu)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   void (*sync_sg_for_device)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   int (*mapping_error)(struct device * , dma_addr_t ) ;
   int (*dma_supported)(struct device * , u64 ) ;
   int (*set_dma_mask)(struct device * , u64 ) ;
   int is_phys ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
enum hrtimer_restart {
    HRTIMER_NORESTART = 0,
    HRTIMER_RESTART = 1
} ;
struct hrtimer {
   struct timerqueue_node node ;
   ktime_t _softexpires ;
   enum hrtimer_restart (*function)(struct hrtimer * ) ;
   struct hrtimer_clock_base *base ;
   unsigned long state ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
};
struct hrtimer_clock_base {
   struct hrtimer_cpu_base *cpu_base ;
   int index ;
   clockid_t clockid ;
   struct timerqueue_head active ;
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[4U] ;
};
struct v4l2_edid {
   __u32 pad ;
   __u32 start_block ;
   __u32 blocks ;
   __u32 reserved[5U] ;
   __u8 *edid ;
};
enum v4l2_buf_type {
    V4L2_BUF_TYPE_VIDEO_CAPTURE = 1,
    V4L2_BUF_TYPE_VIDEO_OUTPUT = 2,
    V4L2_BUF_TYPE_VIDEO_OVERLAY = 3,
    V4L2_BUF_TYPE_VBI_CAPTURE = 4,
    V4L2_BUF_TYPE_VBI_OUTPUT = 5,
    V4L2_BUF_TYPE_SLICED_VBI_CAPTURE = 6,
    V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = 7,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_OVERLAY = 8,
    V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = 9,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = 10,
    V4L2_BUF_TYPE_SDR_CAPTURE = 11,
    V4L2_BUF_TYPE_PRIVATE = 128
} ;
enum v4l2_memory {
    V4L2_MEMORY_MMAP = 1,
    V4L2_MEMORY_USERPTR = 2,
    V4L2_MEMORY_OVERLAY = 3,
    V4L2_MEMORY_DMABUF = 4
} ;
enum v4l2_priority {
    V4L2_PRIORITY_UNSET = 0,
    V4L2_PRIORITY_BACKGROUND = 1,
    V4L2_PRIORITY_INTERACTIVE = 2,
    V4L2_PRIORITY_RECORD = 3,
    V4L2_PRIORITY_DEFAULT = 2
} ;
struct v4l2_rect {
   __s32 left ;
   __s32 top ;
   __u32 width ;
   __u32 height ;
};
struct v4l2_fract {
   __u32 numerator ;
   __u32 denominator ;
};
struct v4l2_pix_format {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 bytesperline ;
   __u32 sizeimage ;
   __u32 colorspace ;
   __u32 priv ;
};
struct v4l2_frmsize_discrete {
   __u32 width ;
   __u32 height ;
};
struct v4l2_frmsize_stepwise {
   __u32 min_width ;
   __u32 max_width ;
   __u32 step_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 step_height ;
};
union __anonunion_ldv_25412_165 {
   struct v4l2_frmsize_discrete discrete ;
   struct v4l2_frmsize_stepwise stepwise ;
};
struct v4l2_frmsizeenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 type ;
   union __anonunion_ldv_25412_165 ldv_25412 ;
   __u32 reserved[2U] ;
};
struct v4l2_frmival_stepwise {
   struct v4l2_fract min ;
   struct v4l2_fract max ;
   struct v4l2_fract step ;
};
union __anonunion_ldv_25431_166 {
   struct v4l2_fract discrete ;
   struct v4l2_frmival_stepwise stepwise ;
};
struct v4l2_frmivalenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 width ;
   __u32 height ;
   __u32 type ;
   union __anonunion_ldv_25431_166 ldv_25431 ;
   __u32 reserved[2U] ;
};
struct v4l2_timecode {
   __u32 type ;
   __u32 flags ;
   __u8 frames ;
   __u8 seconds ;
   __u8 minutes ;
   __u8 hours ;
   __u8 userbits[4U] ;
};
union __anonunion_m_167 {
   __u32 mem_offset ;
   unsigned long userptr ;
   __s32 fd ;
};
struct v4l2_plane {
   __u32 bytesused ;
   __u32 length ;
   union __anonunion_m_167 m ;
   __u32 data_offset ;
   __u32 reserved[11U] ;
};
union __anonunion_m_168 {
   __u32 offset ;
   unsigned long userptr ;
   struct v4l2_plane *planes ;
   __s32 fd ;
};
struct v4l2_buffer {
   __u32 index ;
   __u32 type ;
   __u32 bytesused ;
   __u32 flags ;
   __u32 field ;
   struct timeval timestamp ;
   struct v4l2_timecode timecode ;
   __u32 sequence ;
   __u32 memory ;
   union __anonunion_m_168 m ;
   __u32 length ;
   __u32 reserved2 ;
   __u32 reserved ;
};
struct v4l2_clip {
   struct v4l2_rect c ;
   struct v4l2_clip *next ;
};
struct v4l2_window {
   struct v4l2_rect w ;
   __u32 field ;
   __u32 chromakey ;
   struct v4l2_clip *clips ;
   __u32 clipcount ;
   void *bitmap ;
   __u8 global_alpha ;
};
struct v4l2_captureparm {
   __u32 capability ;
   __u32 capturemode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 readbuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_outputparm {
   __u32 capability ;
   __u32 outputmode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 writebuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_cropcap {
   __u32 type ;
   struct v4l2_rect bounds ;
   struct v4l2_rect defrect ;
   struct v4l2_fract pixelaspect ;
};
struct v4l2_crop {
   __u32 type ;
   struct v4l2_rect c ;
};
typedef __u64 v4l2_std_id;
struct v4l2_bt_timings {
   __u32 width ;
   __u32 height ;
   __u32 interlaced ;
   __u32 polarities ;
   __u64 pixelclock ;
   __u32 hfrontporch ;
   __u32 hsync ;
   __u32 hbackporch ;
   __u32 vfrontporch ;
   __u32 vsync ;
   __u32 vbackporch ;
   __u32 il_vfrontporch ;
   __u32 il_vsync ;
   __u32 il_vbackporch ;
   __u32 standards ;
   __u32 flags ;
   __u32 reserved[14U] ;
};
union __anonunion_ldv_25564_169 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion_ldv_25564_169 ldv_25564 ;
};
struct v4l2_enum_dv_timings {
   __u32 index ;
   __u32 pad ;
   __u32 reserved[2U] ;
   struct v4l2_dv_timings timings ;
};
struct v4l2_bt_timings_cap {
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u64 min_pixelclock ;
   __u64 max_pixelclock ;
   __u32 standards ;
   __u32 capabilities ;
   __u32 reserved[16U] ;
};
union __anonunion_ldv_25587_170 {
   struct v4l2_bt_timings_cap bt ;
   __u32 raw_data[32U] ;
};
struct v4l2_dv_timings_cap {
   __u32 type ;
   __u32 pad ;
   __u32 reserved[2U] ;
   union __anonunion_ldv_25587_170 ldv_25587 ;
};
struct v4l2_control {
   __u32 id ;
   __s32 value ;
};
union __anonunion_ldv_25618_171 {
   __s32 value ;
   __s64 value64 ;
   char *string ;
};
struct v4l2_ext_control {
   __u32 id ;
   __u32 size ;
   __u32 reserved2[1U] ;
   union __anonunion_ldv_25618_171 ldv_25618 ;
};
struct v4l2_ext_controls {
   __u32 ctrl_class ;
   __u32 count ;
   __u32 error_idx ;
   __u32 reserved[2U] ;
   struct v4l2_ext_control *controls ;
};
enum v4l2_ctrl_type {
    V4L2_CTRL_TYPE_INTEGER = 1,
    V4L2_CTRL_TYPE_BOOLEAN = 2,
    V4L2_CTRL_TYPE_MENU = 3,
    V4L2_CTRL_TYPE_BUTTON = 4,
    V4L2_CTRL_TYPE_INTEGER64 = 5,
    V4L2_CTRL_TYPE_CTRL_CLASS = 6,
    V4L2_CTRL_TYPE_STRING = 7,
    V4L2_CTRL_TYPE_BITMASK = 8,
    V4L2_CTRL_TYPE_INTEGER_MENU = 9
} ;
struct v4l2_queryctrl {
   __u32 id ;
   __u32 type ;
   __u8 name[32U] ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 step ;
   __s32 default_value ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
union __anonunion_ldv_25651_172 {
   __u8 name[32U] ;
   __s64 value ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   union __anonunion_ldv_25651_172 ldv_25651 ;
   __u32 reserved ;
};
struct v4l2_tuner {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 rxsubchans ;
   __u32 audmode ;
   __s32 signal ;
   __s32 afc ;
   __u32 reserved[4U] ;
};
struct v4l2_modulator {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 txsubchans ;
   __u32 reserved[4U] ;
};
struct v4l2_frequency {
   __u32 tuner ;
   __u32 type ;
   __u32 frequency ;
   __u32 reserved[8U] ;
};
struct v4l2_frequency_band {
   __u32 tuner ;
   __u32 type ;
   __u32 index ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 modulation ;
   __u32 reserved[9U] ;
};
struct v4l2_vbi_format {
   __u32 sampling_rate ;
   __u32 offset ;
   __u32 samples_per_line ;
   __u32 sample_format ;
   __s32 start[2U] ;
   __u32 count[2U] ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_format {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 io_size ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_cap {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 type ;
   __u32 reserved[3U] ;
};
struct v4l2_sliced_vbi_data {
   __u32 id ;
   __u32 field ;
   __u32 line ;
   __u32 reserved ;
   __u8 data[48U] ;
};
struct v4l2_plane_pix_format {
   __u32 sizeimage ;
   __u16 bytesperline ;
   __u16 reserved[7U] ;
};
struct v4l2_pix_format_mplane {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 colorspace ;
   struct v4l2_plane_pix_format plane_fmt[8U] ;
   __u8 num_planes ;
   __u8 reserved[11U] ;
};
struct v4l2_sdr_format {
   __u32 pixelformat ;
   __u8 reserved[28U] ;
};
union __anonunion_fmt_180 {
   struct v4l2_pix_format pix ;
   struct v4l2_pix_format_mplane pix_mp ;
   struct v4l2_window win ;
   struct v4l2_vbi_format vbi ;
   struct v4l2_sliced_vbi_format sliced ;
   struct v4l2_sdr_format sdr ;
   __u8 raw_data[200U] ;
};
struct v4l2_format {
   __u32 type ;
   union __anonunion_fmt_180 fmt ;
};
union __anonunion_parm_181 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   __u32 type ;
   union __anonunion_parm_181 parm ;
};
struct v4l2_event_subscription {
   __u32 type ;
   __u32 id ;
   __u32 flags ;
   __u32 reserved[5U] ;
};
union __anonunion_ldv_25858_184 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion_ldv_25858_184 ldv_25858 ;
};
struct v4l2_dbg_register {
   struct v4l2_dbg_match match ;
   __u32 size ;
   __u64 reg ;
   __u64 val ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_186 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_186 sigset_t;
struct siginfo;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_188 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_189 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_190 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_191 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_192 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_193 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_194 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_187 {
   int _pad[28U] ;
   struct __anonstruct__kill_188 _kill ;
   struct __anonstruct__timer_189 _timer ;
   struct __anonstruct__rt_190 _rt ;
   struct __anonstruct__sigchld_191 _sigchld ;
   struct __anonstruct__sigfault_192 _sigfault ;
   struct __anonstruct__sigpoll_193 _sigpoll ;
   struct __anonstruct__sigsys_194 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_187 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
enum pid_type {
    PIDTYPE_PID = 0,
    PIDTYPE_PGID = 1,
    PIDTYPE_SID = 2,
    PIDTYPE_MAX = 3
} ;
struct pid_namespace;
struct upid {
   int nr ;
   struct pid_namespace *ns ;
   struct hlist_node pid_chain ;
};
struct pid {
   atomic_t count ;
   unsigned int level ;
   struct hlist_head tasks[3U] ;
   struct callback_head rcu ;
   struct upid numbers[1U] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct rt_mutex {
   raw_spinlock_t wait_lock ;
   struct rb_root waiters ;
   struct rb_node *waiters_leftmost ;
   struct task_struct *owner ;
   int save_state ;
   char const *name ;
   char const *file ;
   int line ;
   void *magic ;
};
struct rt_mutex_waiter;
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
};
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct latency_record {
   unsigned long backtrace[12U] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion_ldv_27035_197 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_27043_198 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_27056_200 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_27057_199 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_27056_200 ldv_27056 ;
};
union __anonunion_type_data_201 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_203 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion_ldv_27072_202 {
   union __anonunion_payload_203 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_27035_197 ldv_27035 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_27043_198 ldv_27043 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_27057_199 ldv_27057 ;
   union __anonunion_type_data_201 type_data ;
   union __anonunion_ldv_27072_202 ldv_27072 ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   kuid_t uid ;
   kgid_t gid ;
   kuid_t suid ;
   kgid_t sgid ;
   kuid_t euid ;
   kgid_t egid ;
   kuid_t fsuid ;
   kgid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct cfs_rq;
struct task_group;
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64U] ;
   spinlock_t siglock ;
   wait_queue_head_t signalfd_wqh ;
};
struct pacct_struct {
   int ac_flag ;
   long ac_exitcode ;
   unsigned long ac_mem ;
   cputime_t ac_utime ;
   cputime_t ac_stime ;
   unsigned long ac_minflt ;
   unsigned long ac_majflt ;
};
struct cpu_itimer {
   cputime_t expires ;
   cputime_t incr ;
   u32 error ;
   u32 incr_error ;
};
struct cputime {
   cputime_t utime ;
   cputime_t stime ;
};
struct task_cputime {
   cputime_t utime ;
   cputime_t stime ;
   unsigned long long sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime cputime ;
   int running ;
   raw_spinlock_t lock ;
};
struct autogroup;
struct tty_struct;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   struct list_head thread_head ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   unsigned char is_child_subreaper : 1 ;
   unsigned char has_child_subreaper : 1 ;
   int posix_timer_id ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2U] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct pid *tty_old_pgrp ;
   int leader ;
   struct tty_struct *tty ;
   struct autogroup *autogroup ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t cutime ;
   cputime_t cstime ;
   cputime_t gtime ;
   cputime_t cgtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   unsigned long cnvcsw ;
   unsigned long cnivcsw ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   unsigned long cmin_flt ;
   unsigned long cmaj_flt ;
   unsigned long inblock ;
   unsigned long oublock ;
   unsigned long cinblock ;
   unsigned long coublock ;
   unsigned long maxrss ;
   unsigned long cmaxrss ;
   struct task_io_accounting ioac ;
   unsigned long long sum_sched_runtime ;
   struct rlimit rlim[16U] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   unsigned int audit_tty_log_passwd ;
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   oom_flags_t oom_flags ;
   short oom_score_adj ;
   short oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t sigpending ;
   atomic_t inotify_watches ;
   atomic_t inotify_devs ;
   atomic_t fanotify_listeners ;
   atomic_long_t epoll_watches ;
   unsigned long mq_bytes ;
   unsigned long locked_shm ;
   struct key *uid_keyring ;
   struct key *session_keyring ;
   struct hlist_node uidhash_node ;
   kuid_t uid ;
   atomic_long_t locked_vm ;
};
struct backing_dev_info;
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
};
struct task_delay_info {
   spinlock_t lock ;
   unsigned int flags ;
   struct timespec blkio_start ;
   struct timespec blkio_end ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   struct timespec freepages_start ;
   struct timespec freepages_end ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct io_context;
struct pipe_inode_info;
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
};
struct sched_avg {
   u32 runnable_avg_sum ;
   u32 runnable_avg_period ;
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
};
struct sched_statistics {
   u64 wait_start ;
   u64 wait_max ;
   u64 wait_count ;
   u64 wait_sum ;
   u64 iowait_count ;
   u64 iowait_sum ;
   u64 sleep_start ;
   u64 sleep_max ;
   s64 sum_sleep_runtime ;
   u64 block_start ;
   u64 block_max ;
   u64 exec_max ;
   u64 slice_max ;
   u64 nr_migrations_cold ;
   u64 nr_failed_migrations_affine ;
   u64 nr_failed_migrations_running ;
   u64 nr_failed_migrations_hot ;
   u64 nr_forced_migrations ;
   u64 nr_wakeups ;
   u64 nr_wakeups_sync ;
   u64 nr_wakeups_migrate ;
   u64 nr_wakeups_local ;
   u64 nr_wakeups_remote ;
   u64 nr_wakeups_affine ;
   u64 nr_wakeups_affine_attempts ;
   u64 nr_wakeups_passive ;
   u64 nr_wakeups_idle ;
};
struct sched_entity {
   struct load_weight load ;
   struct rb_node run_node ;
   struct list_head group_node ;
   unsigned int on_rq ;
   u64 exec_start ;
   u64 sum_exec_runtime ;
   u64 vruntime ;
   u64 prev_sum_exec_runtime ;
   u64 nr_migrations ;
   struct sched_statistics statistics ;
   int depth ;
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
   struct sched_avg avg ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned long watchdog_stamp ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct sched_dl_entity {
   struct rb_node rb_node ;
   u64 dl_runtime ;
   u64 dl_deadline ;
   u64 dl_period ;
   u64 dl_bw ;
   s64 runtime ;
   u64 deadline ;
   unsigned int flags ;
   int dl_throttled ;
   int dl_new ;
   int dl_boosted ;
   int dl_yielded ;
   struct hrtimer dl_timer ;
};
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned char may_oom : 1 ;
};
struct sched_class;
struct files_struct;
struct css_set;
struct compat_robust_list_head;
struct numa_group;
struct ftrace_ret_stack;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   struct task_struct *last_wakee ;
   unsigned long wakee_flips ;
   unsigned long wakee_flip_decay_ts ;
   int wake_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct sched_dl_entity dl ;
   struct hlist_head preempt_notifiers ;
   unsigned int btrace_seq ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned char brk_randomized : 1 ;
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char no_new_privs : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   pid_t pid ;
   pid_t tgid ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct list_head thread_node ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   struct timespec start_time ;
   struct timespec real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
   int link_count ;
   int total_link_count ;
   struct sysv_sem sysvsem ;
   unsigned long last_switch_count ;
   struct thread_struct thread ;
   struct fs_struct *fs ;
   struct files_struct *files ;
   struct nsproxy *nsproxy ;
   struct signal_struct *signal ;
   struct sighand_struct *sighand ;
   sigset_t blocked ;
   sigset_t real_blocked ;
   sigset_t saved_sigmask ;
   struct sigpending pending ;
   unsigned long sas_ss_sp ;
   size_t sas_ss_size ;
   int (*notifier)(void * ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct callback_head *task_works ;
   struct audit_context *audit_context ;
   kuid_t loginuid ;
   unsigned int sessionid ;
   struct seccomp seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   raw_spinlock_t pi_lock ;
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct task_struct *pi_top_task ;
   struct mutex_waiter *blocked_on ;
   unsigned int irq_events ;
   unsigned long hardirq_enable_ip ;
   unsigned long hardirq_disable_ip ;
   unsigned int hardirq_enable_event ;
   unsigned int hardirq_disable_event ;
   int hardirqs_enabled ;
   int hardirq_context ;
   unsigned long softirq_disable_ip ;
   unsigned long softirq_enable_ip ;
   unsigned int softirq_disable_event ;
   unsigned int softirq_enable_event ;
   int softirqs_enabled ;
   int softirq_context ;
   u64 curr_chain_key ;
   int lockdep_depth ;
   unsigned int lockdep_recursion ;
   struct held_lock held_locks[48U] ;
   gfp_t lockdep_reclaim_gfp ;
   void *journal_info ;
   struct bio_list *bio_list ;
   struct blk_plug *plug ;
   struct reclaim_state *reclaim_state ;
   struct backing_dev_info *backing_dev_info ;
   struct io_context *io_context ;
   unsigned long ptrace_message ;
   siginfo_t *last_siginfo ;
   struct task_io_accounting ioac ;
   u64 acct_rss_mem1 ;
   u64 acct_vm_mem1 ;
   cputime_t acct_timexpd ;
   nodemask_t mems_allowed ;
   seqcount_t mems_allowed_seq ;
   int cpuset_mem_spread_rotor ;
   int cpuset_slab_spread_rotor ;
   struct css_set *cgroups ;
   struct list_head cg_list ;
   struct robust_list_head *robust_list ;
   struct compat_robust_list_head *compat_robust_list ;
   struct list_head pi_state_list ;
   struct futex_pi_state *pi_state_cache ;
   struct perf_event_context *perf_event_ctxp[2U] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   int numa_scan_seq ;
   unsigned int numa_scan_period ;
   unsigned int numa_scan_period_max ;
   int numa_preferred_nid ;
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   u64 last_task_numa_placement ;
   u64 last_sum_exec_runtime ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults_memory ;
   unsigned long total_numa_faults ;
   unsigned long *numa_faults_buffer_memory ;
   unsigned long *numa_faults_cpu ;
   unsigned long *numa_faults_buffer_cpu ;
   unsigned long numa_faults_locality[2U] ;
   unsigned long numa_pages_migrated ;
   struct callback_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct page_frag task_frag ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
};
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
   struct bin_attribute attr ;
};
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char const *full_name ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct device_node *next ;
   struct device_node *allnext ;
   struct kobject kobj ;
   unsigned long _flags ;
   void *data ;
};
struct i2c_msg {
   __u16 addr ;
   __u16 flags ;
   __u16 len ;
   __u8 *buf ;
};
union i2c_smbus_data {
   __u8 byte ;
   __u16 word ;
   __u8 block[34U] ;
};
struct i2c_algorithm;
struct i2c_algorithm {
   int (*master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
   int (*smbus_xfer)(struct i2c_adapter * , u16 , unsigned short , char , u8 ,
                     int , union i2c_smbus_data * ) ;
   u32 (*functionality)(struct i2c_adapter * ) ;
};
struct i2c_bus_recovery_info {
   int (*recover_bus)(struct i2c_adapter * ) ;
   int (*get_scl)(struct i2c_adapter * ) ;
   void (*set_scl)(struct i2c_adapter * , int ) ;
   int (*get_sda)(struct i2c_adapter * ) ;
   void (*prepare_recovery)(struct i2c_bus_recovery_info * ) ;
   void (*unprepare_recovery)(struct i2c_bus_recovery_info * ) ;
   int scl_gpio ;
   int sda_gpio ;
};
struct i2c_adapter {
   struct module *owner ;
   unsigned int class ;
   struct i2c_algorithm const *algo ;
   void *algo_data ;
   struct rt_mutex bus_lock ;
   int timeout ;
   int retries ;
   struct device dev ;
   int nr ;
   char name[48U] ;
   struct completion dev_released ;
   struct mutex userspace_clients_lock ;
   struct list_head userspace_clients ;
   struct i2c_bus_recovery_info *bus_recovery_info ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_29396_206 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_29397_205 {
   struct __anonstruct_ldv_29396_206 ldv_29396 ;
};
struct lockref {
   union __anonunion_ldv_29397_205 ldv_29397 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct_ldv_29420_208 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_29422_207 {
   struct __anonstruct_ldv_29420_208 ldv_29420 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_29422_207 ldv_29422 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_209 {
   struct list_head d_child ;
   struct callback_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32U] ;
   struct lockref d_lockref ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_209 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_weak_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct dentry const * , unsigned int ,
                    char const * , struct qstr const * ) ;
   int (*d_delete)(struct dentry const * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_head list ;
   long nr_items ;
};
struct list_lru {
   struct list_lru_node *node ;
   nodemask_t active_nodes ;
};
struct __anonstruct_ldv_29783_211 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_29785_210 {
   struct __anonstruct_ldv_29783_211 ldv_29783 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_29785_210 ldv_29785 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct export_operations;
struct iovec;
struct kiocb;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iov_iter;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   kuid_t ia_uid ;
   kgid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct fs_disk_quota {
   __s8 d_version ;
   __s8 d_flags ;
   __u16 d_fieldmask ;
   __u32 d_id ;
   __u64 d_blk_hardlimit ;
   __u64 d_blk_softlimit ;
   __u64 d_ino_hardlimit ;
   __u64 d_ino_softlimit ;
   __u64 d_bcount ;
   __u64 d_icount ;
   __s32 d_itimer ;
   __s32 d_btimer ;
   __u16 d_iwarns ;
   __u16 d_bwarns ;
   __s32 d_padding2 ;
   __u64 d_rtb_hardlimit ;
   __u64 d_rtb_softlimit ;
   __u64 d_rtbcount ;
   __s32 d_rtbtimer ;
   __u16 d_rtbwarns ;
   __s16 d_padding3 ;
   char d_padding4[8U] ;
};
struct fs_qfilestat {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
};
typedef struct fs_qfilestat fs_qfilestat_t;
struct fs_quota_stat {
   __s8 qs_version ;
   __u16 qs_flags ;
   __s8 qs_pad ;
   fs_qfilestat_t qs_uquota ;
   fs_qfilestat_t qs_gquota ;
   __u32 qs_incoredqs ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
};
struct fs_qfilestatv {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
   __u32 qfs_pad ;
};
struct fs_quota_statv {
   __s8 qs_version ;
   __u8 qs_pad1 ;
   __u16 qs_flags ;
   __u32 qs_incoredqs ;
   struct fs_qfilestatv qs_uquota ;
   struct fs_qfilestatv qs_gquota ;
   struct fs_qfilestatv qs_pquota ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
   __u64 qs_pad2[8U] ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_212 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_212 kprojid_t;
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion_ldv_30314_213 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_30314_213 ldv_30314 ;
   enum quota_type type ;
};
struct mem_dqblk {
   qsize_t dqb_bhardlimit ;
   qsize_t dqb_bsoftlimit ;
   qsize_t dqb_curspace ;
   qsize_t dqb_rsvspace ;
   qsize_t dqb_ihardlimit ;
   qsize_t dqb_isoftlimit ;
   qsize_t dqb_curinodes ;
   time_t dqb_btime ;
   time_t dqb_itime ;
};
struct quota_format_type;
struct mem_dqinfo {
   struct quota_format_type *dqi_format ;
   int dqi_fmt_id ;
   struct list_head dqi_dirty_list ;
   unsigned long dqi_flags ;
   unsigned int dqi_bgrace ;
   unsigned int dqi_igrace ;
   qsize_t dqi_maxblimit ;
   qsize_t dqi_maxilimit ;
   void *dqi_priv ;
};
struct dquot {
   struct hlist_node dq_hash ;
   struct list_head dq_inuse ;
   struct list_head dq_free ;
   struct list_head dq_dirty ;
   struct mutex dq_lock ;
   atomic_t dq_count ;
   wait_queue_head_t dq_wait_unused ;
   struct super_block *dq_sb ;
   struct kqid dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   struct mem_dqblk dq_dqb ;
};
struct quota_format_ops {
   int (*check_quota_file)(struct super_block * , int ) ;
   int (*read_file_info)(struct super_block * , int ) ;
   int (*write_file_info)(struct super_block * , int ) ;
   int (*free_file_info)(struct super_block * , int ) ;
   int (*read_dqblk)(struct dquot * ) ;
   int (*commit_dqblk)(struct dquot * ) ;
   int (*release_dqblk)(struct dquot * ) ;
};
struct dquot_operations {
   int (*write_dquot)(struct dquot * ) ;
   struct dquot *(*alloc_dquot)(struct super_block * , int ) ;
   void (*destroy_dquot)(struct dquot * ) ;
   int (*acquire_dquot)(struct dquot * ) ;
   int (*release_dquot)(struct dquot * ) ;
   int (*mark_dirty)(struct dquot * ) ;
   int (*write_info)(struct super_block * , int ) ;
   qsize_t *(*get_reserved_space)(struct inode * ) ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_on_meta)(struct super_block * , int , int ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*set_xstate)(struct super_block * , unsigned int , int ) ;
   int (*get_xstatev)(struct super_block * , struct fs_quota_statv * ) ;
   int (*rm_xquota)(struct super_block * , unsigned int ) ;
};
struct quota_format_type {
   int qf_fmt_id ;
   struct quota_format_ops const *qf_ops ;
   struct module *qf_owner ;
   struct quota_format_type *qf_next ;
};
struct quota_info {
   unsigned int flags ;
   struct mutex dqio_mutex ;
   struct mutex dqonoff_mutex ;
   struct rw_semaphore dqptr_sem ;
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page * ) ;
   int (*readpages)(struct file * , struct address_space * , struct list_head * ,
                    unsigned int ) ;
   int (*write_begin)(struct file * , struct address_space * , loff_t , unsigned int ,
                      unsigned int , struct page ** , void ** ) ;
   int (*write_end)(struct file * , struct address_space * , loff_t , unsigned int ,
                    unsigned int , struct page * , void * ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned int , unsigned int ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iov_iter * , loff_t ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , unsigned long , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct rb_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long nrshadows ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
struct request_queue;
struct hd_struct;
struct gendisk;
struct block_device {
   dev_t bd_dev ;
   int bd_openers ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   struct mutex bd_mutex ;
   struct list_head bd_inodes ;
   void *bd_claiming ;
   void *bd_holder ;
   int bd_holders ;
   bool bd_write_holder ;
   struct list_head bd_holder_disks ;
   struct block_device *bd_contains ;
   unsigned int bd_block_size ;
   struct hd_struct *bd_part ;
   unsigned int bd_part_count ;
   int bd_invalidated ;
   struct gendisk *bd_disk ;
   struct request_queue *bd_queue ;
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct inode_operations;
union __anonunion_ldv_30728_216 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_30748_217 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_30765_218 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   kuid_t i_uid ;
   kgid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion_ldv_30728_216 ldv_30728 ;
   dev_t i_rdev ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   unsigned int i_blkbits ;
   blkcnt_t i_blocks ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion_ldv_30748_217 ldv_30748 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_30765_218 ldv_30765 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   void *i_private ;
};
struct fown_struct {
   rwlock_t lock ;
   struct pid *pid ;
   enum pid_type pid_type ;
   kuid_t uid ;
   kuid_t euid ;
   int signum ;
};
struct file_ra_state {
   unsigned long start ;
   unsigned int size ;
   unsigned int async_size ;
   unsigned int ra_pages ;
   unsigned int mmap_miss ;
   loff_t prev_pos ;
};
union __anonunion_f_u_219 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_219 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   struct mutex f_pos_lock ;
   loff_t f_pos ;
   struct fown_struct f_owner ;
   struct cred const *f_cred ;
   struct file_ra_state f_ra ;
   u64 f_version ;
   void *f_security ;
   void *private_data ;
   struct list_head f_ep_links ;
   struct list_head f_tfile_llink ;
   struct address_space *f_mapping ;
};
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
};
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_221 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_220 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_221 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct hlist_node fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   int fl_link_cpu ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   unsigned long fl_downgrade_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_220 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct callback_head fa_rcu ;
};
struct sb_writers {
   struct percpu_counter counter[3U] ;
   wait_queue_head_t wait ;
   int frozen ;
   wait_queue_head_t wait_unfrozen ;
   struct lockdep_map lock_map[3U] ;
};
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_blocksize_bits ;
   unsigned long s_blocksize ;
   loff_t s_maxbytes ;
   struct file_system_type *s_type ;
   struct super_operations const *s_op ;
   struct dquot_operations const *dq_op ;
   struct quotactl_ops const *s_qcop ;
   struct export_operations const *s_export_op ;
   unsigned long s_flags ;
   unsigned long s_magic ;
   struct dentry *s_root ;
   struct rw_semaphore s_umount ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head s_mounts ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   struct quota_info s_dquot ;
   struct sb_writers s_writers ;
   char s_id[32U] ;
   u8 s_uuid[16U] ;
   void *s_fs_info ;
   unsigned int s_max_links ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
   int cleancache_poolid ;
   struct shrinker s_shrink ;
   atomic_long_t s_remove_count ;
   int s_readonly_remount ;
   struct workqueue_struct *s_dio_done_wq ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context {
   int (*actor)(void * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int ) ;
   int (*aio_fsync)(struct kiocb * , int ) ;
   int (*fasync)(int , struct file * , int ) ;
   int (*lock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*sendpage)(struct file * , struct page * , int , size_t , loff_t * ,
                       int ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*check_flags)(int ) ;
   int (*flock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*splice_write)(struct pipe_inode_info * , struct file * , loff_t * , size_t ,
                           unsigned int ) ;
   ssize_t (*splice_read)(struct file * , loff_t * , struct pipe_inode_info * , size_t ,
                          unsigned int ) ;
   int (*setlease)(struct file * , long , struct file_lock ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   int (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , bool ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   int (*rename2)(struct inode * , struct dentry * , struct inode * , struct dentry * ,
                  unsigned int ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
   int (*update_time)(struct inode * , struct timespec * , int ) ;
   int (*atomic_open)(struct inode * , struct dentry * , struct file * , unsigned int ,
                      umode_t , int * ) ;
   int (*tmpfile)(struct inode * , struct dentry * , umode_t ) ;
   int (*set_acl)(struct inode * , struct posix_acl * , int ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct dentry * ) ;
   int (*show_devname)(struct seq_file * , struct dentry * ) ;
   int (*show_path)(struct seq_file * , struct dentry * ) ;
   int (*show_stats)(struct seq_file * , struct dentry * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , int ) ;
   long (*free_cached_objects)(struct super_block * , long , int ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct hlist_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key s_writers_key[3U] ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct media_pipeline {
};
struct media_pad;
struct media_link {
   struct media_pad *source ;
   struct media_pad *sink ;
   struct media_link *reverse ;
   unsigned long flags ;
};
struct media_entity;
struct media_pad {
   struct media_entity *entity ;
   u16 index ;
   unsigned long flags ;
};
struct media_entity_operations {
   int (*link_setup)(struct media_entity * , struct media_pad const * , struct media_pad const * ,
                     u32 ) ;
   int (*link_validate)(struct media_link * ) ;
};
struct media_device;
struct __anonstruct_v4l_228 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_fb_229 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_alsa_230 {
   u32 card ;
   u32 device ;
   u32 subdevice ;
};
union __anonunion_info_227 {
   struct __anonstruct_v4l_228 v4l ;
   struct __anonstruct_fb_229 fb ;
   struct __anonstruct_alsa_230 alsa ;
   int dvb ;
};
struct media_entity {
   struct list_head list ;
   struct media_device *parent ;
   u32 id ;
   char const *name ;
   u32 type ;
   u32 revision ;
   unsigned long flags ;
   u32 group_id ;
   u16 num_pads ;
   u16 num_links ;
   u16 num_backlinks ;
   u16 max_links ;
   struct media_pad *pads ;
   struct media_link *links ;
   struct media_entity_operations const *ops ;
   int stream_count ;
   int use_count ;
   struct media_pipeline *pipe ;
   union __anonunion_info_227 info ;
};
struct video_device;
struct v4l2_device;
struct v4l2_ctrl_handler;
struct v4l2_prio_state {
   atomic_t prios[4U] ;
};
struct v4l2_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl32)(struct file * , unsigned int , unsigned long ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct v4l2_ioctl_ops;
struct video_device {
   struct media_entity entity ;
   struct v4l2_file_operations const *fops ;
   struct device dev ;
   struct cdev *cdev ;
   struct v4l2_device *v4l2_dev ;
   struct device *dev_parent ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct vb2_queue *queue ;
   struct v4l2_prio_state *prio ;
   char name[32U] ;
   int vfl_type ;
   int vfl_dir ;
   int minor ;
   u16 num ;
   unsigned long flags ;
   int index ;
   spinlock_t fh_lock ;
   struct list_head fh_list ;
   int debug ;
   v4l2_std_id tvnorms ;
   void (*release)(struct video_device * ) ;
   struct v4l2_ioctl_ops const *ioctl_ops ;
   unsigned long valid_ioctls[3U] ;
   unsigned long disable_locking[3U] ;
   struct mutex *lock ;
};
struct media_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct media_devnode {
   struct media_file_operations const *fops ;
   struct device dev ;
   struct cdev cdev ;
   struct device *parent ;
   int minor ;
   unsigned long flags ;
   void (*release)(struct media_devnode * ) ;
};
struct media_device {
   struct device *dev ;
   struct media_devnode devnode ;
   char model[32U] ;
   char serial[40U] ;
   char bus_info[32U] ;
   u32 hw_revision ;
   u32 driver_version ;
   u32 entity_id ;
   struct list_head entities ;
   spinlock_t lock ;
   struct mutex graph_mutex ;
   int (*link_notify)(struct media_link * , u32 , unsigned int ) ;
};
enum v4l2_mbus_pixelcode {
    V4L2_MBUS_FMT_FIXED = 1,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_BE = 4097,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_LE = 4098,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_BE = 4099,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_LE = 4100,
    V4L2_MBUS_FMT_BGR565_2X8_BE = 4101,
    V4L2_MBUS_FMT_BGR565_2X8_LE = 4102,
    V4L2_MBUS_FMT_RGB565_2X8_BE = 4103,
    V4L2_MBUS_FMT_RGB565_2X8_LE = 4104,
    V4L2_MBUS_FMT_RGB666_1X18 = 4105,
    V4L2_MBUS_FMT_RGB888_1X24 = 4106,
    V4L2_MBUS_FMT_RGB888_2X12_BE = 4107,
    V4L2_MBUS_FMT_RGB888_2X12_LE = 4108,
    V4L2_MBUS_FMT_ARGB8888_1X32 = 4109,
    V4L2_MBUS_FMT_Y8_1X8 = 8193,
    V4L2_MBUS_FMT_UV8_1X8 = 8213,
    V4L2_MBUS_FMT_UYVY8_1_5X8 = 8194,
    V4L2_MBUS_FMT_VYUY8_1_5X8 = 8195,
    V4L2_MBUS_FMT_YUYV8_1_5X8 = 8196,
    V4L2_MBUS_FMT_YVYU8_1_5X8 = 8197,
    V4L2_MBUS_FMT_UYVY8_2X8 = 8198,
    V4L2_MBUS_FMT_VYUY8_2X8 = 8199,
    V4L2_MBUS_FMT_YUYV8_2X8 = 8200,
    V4L2_MBUS_FMT_YVYU8_2X8 = 8201,
    V4L2_MBUS_FMT_Y10_1X10 = 8202,
    V4L2_MBUS_FMT_UYVY10_2X10 = 8216,
    V4L2_MBUS_FMT_VYUY10_2X10 = 8217,
    V4L2_MBUS_FMT_YUYV10_2X10 = 8203,
    V4L2_MBUS_FMT_YVYU10_2X10 = 8204,
    V4L2_MBUS_FMT_Y12_1X12 = 8211,
    V4L2_MBUS_FMT_UYVY8_1X16 = 8207,
    V4L2_MBUS_FMT_VYUY8_1X16 = 8208,
    V4L2_MBUS_FMT_YUYV8_1X16 = 8209,
    V4L2_MBUS_FMT_YVYU8_1X16 = 8210,
    V4L2_MBUS_FMT_YDYUYDYV8_1X16 = 8212,
    V4L2_MBUS_FMT_UYVY10_1X20 = 8218,
    V4L2_MBUS_FMT_VYUY10_1X20 = 8219,
    V4L2_MBUS_FMT_YUYV10_1X20 = 8205,
    V4L2_MBUS_FMT_YVYU10_1X20 = 8206,
    V4L2_MBUS_FMT_YUV10_1X30 = 8214,
    V4L2_MBUS_FMT_AYUV8_1X32 = 8215,
    V4L2_MBUS_FMT_UYVY12_2X12 = 8220,
    V4L2_MBUS_FMT_VYUY12_2X12 = 8221,
    V4L2_MBUS_FMT_YUYV12_2X12 = 8222,
    V4L2_MBUS_FMT_YVYU12_2X12 = 8223,
    V4L2_MBUS_FMT_UYVY12_1X24 = 8224,
    V4L2_MBUS_FMT_VYUY12_1X24 = 8225,
    V4L2_MBUS_FMT_YUYV12_1X24 = 8226,
    V4L2_MBUS_FMT_YVYU12_1X24 = 8227,
    V4L2_MBUS_FMT_SBGGR8_1X8 = 12289,
    V4L2_MBUS_FMT_SGBRG8_1X8 = 12307,
    V4L2_MBUS_FMT_SGRBG8_1X8 = 12290,
    V4L2_MBUS_FMT_SRGGB8_1X8 = 12308,
    V4L2_MBUS_FMT_SBGGR10_ALAW8_1X8 = 12309,
    V4L2_MBUS_FMT_SGBRG10_ALAW8_1X8 = 12310,
    V4L2_MBUS_FMT_SGRBG10_ALAW8_1X8 = 12311,
    V4L2_MBUS_FMT_SRGGB10_ALAW8_1X8 = 12312,
    V4L2_MBUS_FMT_SBGGR10_DPCM8_1X8 = 12299,
    V4L2_MBUS_FMT_SGBRG10_DPCM8_1X8 = 12300,
    V4L2_MBUS_FMT_SGRBG10_DPCM8_1X8 = 12297,
    V4L2_MBUS_FMT_SRGGB10_DPCM8_1X8 = 12301,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_BE = 12291,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_LE = 12292,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_BE = 12293,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_LE = 12294,
    V4L2_MBUS_FMT_SBGGR10_1X10 = 12295,
    V4L2_MBUS_FMT_SGBRG10_1X10 = 12302,
    V4L2_MBUS_FMT_SGRBG10_1X10 = 12298,
    V4L2_MBUS_FMT_SRGGB10_1X10 = 12303,
    V4L2_MBUS_FMT_SBGGR12_1X12 = 12296,
    V4L2_MBUS_FMT_SGBRG12_1X12 = 12304,
    V4L2_MBUS_FMT_SGRBG12_1X12 = 12305,
    V4L2_MBUS_FMT_SRGGB12_1X12 = 12306,
    V4L2_MBUS_FMT_JPEG_1X8 = 16385,
    V4L2_MBUS_FMT_S5C_UYVY_JPEG_1X8 = 20481,
    V4L2_MBUS_FMT_AHSV8888_1X32 = 24577
} ;
struct v4l2_mbus_framefmt {
   __u32 width ;
   __u32 height ;
   __u32 code ;
   __u32 field ;
   __u32 colorspace ;
   __u32 reserved[7U] ;
};
struct v4l2_subdev_format {
   __u32 which ;
   __u32 pad ;
   struct v4l2_mbus_framefmt format ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_crop {
   __u32 which ;
   __u32 pad ;
   struct v4l2_rect rect ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_mbus_code_enum {
   __u32 pad ;
   __u32 index ;
   __u32 code ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_size_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval {
   __u32 pad ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 width ;
   __u32 height ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_selection {
   __u32 which ;
   __u32 pad ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev;
struct v4l2_async_notifier;
enum v4l2_async_match_type {
    V4L2_ASYNC_MATCH_CUSTOM = 0,
    V4L2_ASYNC_MATCH_DEVNAME = 1,
    V4L2_ASYNC_MATCH_I2C = 2,
    V4L2_ASYNC_MATCH_OF = 3
} ;
struct __anonstruct_of_233 {
   struct device_node const *node ;
};
struct __anonstruct_device_name_234 {
   char const *name ;
};
struct __anonstruct_i2c_235 {
   int adapter_id ;
   unsigned short address ;
};
struct __anonstruct_custom_236 {
   bool (*match)(struct device * , struct v4l2_async_subdev * ) ;
   void *priv ;
};
union __anonunion_match_232 {
   struct __anonstruct_of_233 of ;
   struct __anonstruct_device_name_234 device_name ;
   struct __anonstruct_i2c_235 i2c ;
   struct __anonstruct_custom_236 custom ;
};
struct v4l2_async_subdev {
   enum v4l2_async_match_type match_type ;
   union __anonunion_match_232 match ;
   struct list_head list ;
};
struct v4l2_async_notifier {
   unsigned int num_subdevs ;
   struct v4l2_async_subdev **subdevs ;
   struct v4l2_device *v4l2_dev ;
   struct list_head waiting ;
   struct list_head done ;
   struct list_head list ;
   int (*bound)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
   int (*complete)(struct v4l2_async_notifier * ) ;
   void (*unbind)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
};
struct v4l2_subdev_ops;
struct v4l2_priv_tun_config {
   int tuner ;
   void *priv ;
};
struct v4l2_m2m_ctx;
struct v4l2_fh {
   struct list_head list ;
   struct video_device *vdev ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   enum v4l2_priority prio ;
   wait_queue_head_t wait ;
   struct list_head subscribed ;
   struct list_head available ;
   unsigned int navailable ;
   u32 sequence ;
   struct v4l2_m2m_ctx *m2m_ctx ;
};
enum v4l2_mbus_type {
    V4L2_MBUS_PARALLEL = 0,
    V4L2_MBUS_BT656 = 1,
    V4L2_MBUS_CSI2 = 2
} ;
struct v4l2_mbus_config {
   enum v4l2_mbus_type type ;
   unsigned int flags ;
};
struct v4l2_subdev_fh;
struct tuner_setup;
struct v4l2_mbus_frame_desc;
struct v4l2_decode_vbi_line {
   u32 is_second_field ;
   u8 *p ;
   u32 line ;
   u32 type ;
};
struct v4l2_subdev_io_pin_config {
   u32 flags ;
   u8 pin ;
   u8 function ;
   u8 value ;
   u8 strength ;
};
struct v4l2_subdev_core_ops {
   int (*log_status)(struct v4l2_subdev * ) ;
   int (*s_io_pin_config)(struct v4l2_subdev * , size_t , struct v4l2_subdev_io_pin_config * ) ;
   int (*init)(struct v4l2_subdev * , u32 ) ;
   int (*load_fw)(struct v4l2_subdev * ) ;
   int (*reset)(struct v4l2_subdev * , u32 ) ;
   int (*s_gpio)(struct v4l2_subdev * , u32 ) ;
   int (*queryctrl)(struct v4l2_subdev * , struct v4l2_queryctrl * ) ;
   int (*g_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*s_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*g_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*s_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*try_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*querymenu)(struct v4l2_subdev * , struct v4l2_querymenu * ) ;
   long (*ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
   long (*compat_ioctl32)(struct v4l2_subdev * , unsigned int , unsigned long ) ;
   int (*g_register)(struct v4l2_subdev * , struct v4l2_dbg_register * ) ;
   int (*s_register)(struct v4l2_subdev * , struct v4l2_dbg_register const * ) ;
   int (*s_power)(struct v4l2_subdev * , int ) ;
   int (*interrupt_service_routine)(struct v4l2_subdev * , u32 , bool * ) ;
   int (*subscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
   int (*unsubscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
};
struct v4l2_subdev_tuner_ops {
   int (*s_radio)(struct v4l2_subdev * ) ;
   int (*s_frequency)(struct v4l2_subdev * , struct v4l2_frequency const * ) ;
   int (*g_frequency)(struct v4l2_subdev * , struct v4l2_frequency * ) ;
   int (*enum_freq_bands)(struct v4l2_subdev * , struct v4l2_frequency_band * ) ;
   int (*g_tuner)(struct v4l2_subdev * , struct v4l2_tuner * ) ;
   int (*s_tuner)(struct v4l2_subdev * , struct v4l2_tuner const * ) ;
   int (*g_modulator)(struct v4l2_subdev * , struct v4l2_modulator * ) ;
   int (*s_modulator)(struct v4l2_subdev * , struct v4l2_modulator const * ) ;
   int (*s_type_addr)(struct v4l2_subdev * , struct tuner_setup * ) ;
   int (*s_config)(struct v4l2_subdev * , struct v4l2_priv_tun_config const * ) ;
};
struct v4l2_subdev_audio_ops {
   int (*s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_i2s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
};
struct v4l2_mbus_frame_desc_entry {
   u16 flags ;
   u32 pixelcode ;
   u32 length ;
};
struct v4l2_mbus_frame_desc {
   struct v4l2_mbus_frame_desc_entry entry[4U] ;
   unsigned short num_entries ;
};
struct v4l2_subdev_video_ops {
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_crystal_freq)(struct v4l2_subdev * , u32 , u32 ) ;
   int (*g_std)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*s_std)(struct v4l2_subdev * , v4l2_std_id ) ;
   int (*s_std_output)(struct v4l2_subdev * , v4l2_std_id ) ;
   int (*g_std_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*querystd)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_tvnorms)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_tvnorms_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_input_status)(struct v4l2_subdev * , u32 * ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
   int (*cropcap)(struct v4l2_subdev * , struct v4l2_cropcap * ) ;
   int (*g_crop)(struct v4l2_subdev * , struct v4l2_crop * ) ;
   int (*s_crop)(struct v4l2_subdev * , struct v4l2_crop const * ) ;
   int (*g_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*s_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*g_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*s_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*enum_framesizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*enum_frameintervals)(struct v4l2_subdev * , struct v4l2_frmivalenum * ) ;
   int (*s_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*g_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*query_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*enum_mbus_fmt)(struct v4l2_subdev * , unsigned int , enum v4l2_mbus_pixelcode * ) ;
   int (*enum_mbus_fsizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*g_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*try_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*s_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*g_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config * ) ;
   int (*s_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config const * ) ;
   int (*s_rx_buffer)(struct v4l2_subdev * , void * , unsigned int * ) ;
};
struct v4l2_subdev_vbi_ops {
   int (*decode_vbi_line)(struct v4l2_subdev * , struct v4l2_decode_vbi_line * ) ;
   int (*s_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data const * ) ;
   int (*g_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data * ) ;
   int (*g_sliced_vbi_cap)(struct v4l2_subdev * , struct v4l2_sliced_vbi_cap * ) ;
   int (*s_raw_fmt)(struct v4l2_subdev * , struct v4l2_vbi_format * ) ;
   int (*g_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
   int (*s_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
};
struct v4l2_subdev_sensor_ops {
   int (*g_skip_top_lines)(struct v4l2_subdev * , u32 * ) ;
   int (*g_skip_frames)(struct v4l2_subdev * , u32 * ) ;
};
enum v4l2_subdev_ir_mode {
    V4L2_SUBDEV_IR_MODE_PULSE_WIDTH = 0
} ;
struct v4l2_subdev_ir_parameters {
   unsigned int bytes_per_data_element ;
   enum v4l2_subdev_ir_mode mode ;
   bool enable ;
   bool interrupt_enable ;
   bool shutdown ;
   bool modulation ;
   u32 max_pulse_width ;
   unsigned int carrier_freq ;
   unsigned int duty_cycle ;
   bool invert_level ;
   bool invert_carrier_sense ;
   u32 noise_filter_min_width ;
   unsigned int carrier_range_lower ;
   unsigned int carrier_range_upper ;
   u32 resolution ;
};
struct v4l2_subdev_ir_ops {
   int (*rx_read)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*rx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*rx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_write)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*tx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
};
struct v4l2_subdev_pad_ops {
   int (*enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_mbus_code_enum * ) ;
   int (*enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_size_enum * ) ;
   int (*enum_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_interval_enum * ) ;
   int (*get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
   int (*get_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
   int (*get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*get_edid)(struct v4l2_subdev * , struct v4l2_edid * ) ;
   int (*set_edid)(struct v4l2_subdev * , struct v4l2_edid * ) ;
   int (*dv_timings_cap)(struct v4l2_subdev * , struct v4l2_dv_timings_cap * ) ;
   int (*enum_dv_timings)(struct v4l2_subdev * , struct v4l2_enum_dv_timings * ) ;
   int (*link_validate)(struct v4l2_subdev * , struct media_link * , struct v4l2_subdev_format * ,
                        struct v4l2_subdev_format * ) ;
   int (*get_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
   int (*set_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
};
struct v4l2_subdev_ops {
   struct v4l2_subdev_core_ops const *core ;
   struct v4l2_subdev_tuner_ops const *tuner ;
   struct v4l2_subdev_audio_ops const *audio ;
   struct v4l2_subdev_video_ops const *video ;
   struct v4l2_subdev_vbi_ops const *vbi ;
   struct v4l2_subdev_ir_ops const *ir ;
   struct v4l2_subdev_sensor_ops const *sensor ;
   struct v4l2_subdev_pad_ops const *pad ;
};
struct v4l2_subdev_internal_ops {
   int (*registered)(struct v4l2_subdev * ) ;
   void (*unregistered)(struct v4l2_subdev * ) ;
   int (*open)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
   int (*close)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
};
struct regulator_bulk_data;
struct v4l2_subdev_platform_data {
   struct regulator_bulk_data *regulators ;
   int num_regulators ;
   void *host_priv ;
};
struct v4l2_subdev {
   struct media_entity entity ;
   struct list_head list ;
   struct module *owner ;
   bool owner_v4l2_dev ;
   u32 flags ;
   struct v4l2_device *v4l2_dev ;
   struct v4l2_subdev_ops const *ops ;
   struct v4l2_subdev_internal_ops const *internal_ops ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   char name[32U] ;
   u32 grp_id ;
   void *dev_priv ;
   void *host_priv ;
   struct video_device *devnode ;
   struct device *dev ;
   struct list_head async_list ;
   struct v4l2_async_subdev *asd ;
   struct v4l2_async_notifier *notifier ;
   struct v4l2_subdev_platform_data *pdata ;
};
struct __anonstruct_pad_237 {
   struct v4l2_mbus_framefmt try_fmt ;
   struct v4l2_rect try_crop ;
   struct v4l2_rect try_compose ;
};
struct v4l2_subdev_fh {
   struct v4l2_fh vfh ;
   struct __anonstruct_pad_237 *pad ;
};
struct v4l2_device {
   struct device *dev ;
   struct media_device *mdev ;
   struct list_head subdevs ;
   spinlock_t lock ;
   char name[36U] ;
   void (*notify)(struct v4l2_subdev * , unsigned int , void * ) ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct v4l2_prio_state prio ;
   struct mutex ioctl_lock ;
   struct kref ref ;
   void (*release)(struct v4l2_device * ) ;
};
struct v4l2_ctrl_helper;
struct v4l2_ctrl;
struct v4l2_ctrl_ops {
   int (*g_volatile_ctrl)(struct v4l2_ctrl * ) ;
   int (*try_ctrl)(struct v4l2_ctrl * ) ;
   int (*s_ctrl)(struct v4l2_ctrl * ) ;
};
union __anonunion_ldv_34503_238 {
   u32 step ;
   u32 menu_skip_mask ;
};
union __anonunion_ldv_34507_239 {
   char const * const *qmenu ;
   s64 const *qmenu_int ;
};
union __anonunion_cur_240 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
union __anonunion_ldv_34518_241 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
struct v4l2_ctrl {
   struct list_head node ;
   struct list_head ev_subs ;
   struct v4l2_ctrl_handler *handler ;
   struct v4l2_ctrl **cluster ;
   unsigned int ncontrols ;
   unsigned char done : 1 ;
   unsigned char is_new : 1 ;
   unsigned char is_private : 1 ;
   unsigned char is_auto : 1 ;
   unsigned char has_volatiles : 1 ;
   unsigned char call_notify : 1 ;
   unsigned char manual_mode_value ;
   struct v4l2_ctrl_ops const *ops ;
   u32 id ;
   char const *name ;
   enum v4l2_ctrl_type type ;
   s32 minimum ;
   s32 maximum ;
   s32 default_value ;
   union __anonunion_ldv_34503_238 ldv_34503 ;
   union __anonunion_ldv_34507_239 ldv_34507 ;
   unsigned long flags ;
   union __anonunion_cur_240 cur ;
   union __anonunion_ldv_34518_241 ldv_34518 ;
   void *priv ;
};
struct v4l2_ctrl_ref {
   struct list_head node ;
   struct v4l2_ctrl_ref *next ;
   struct v4l2_ctrl *ctrl ;
   struct v4l2_ctrl_helper *helper ;
};
struct v4l2_ctrl_handler {
   struct mutex _lock ;
   struct mutex *lock ;
   struct list_head ctrls ;
   struct list_head ctrl_refs ;
   struct v4l2_ctrl_ref *cached ;
   struct v4l2_ctrl_ref **buckets ;
   void (*notify)(struct v4l2_ctrl * , void * ) ;
   void *notify_priv ;
   u16 nr_of_buckets ;
   int error ;
};
struct dma_buf;
struct dma_buf_attachment;
struct dma_buf_ops {
   int (*attach)(struct dma_buf * , struct device * , struct dma_buf_attachment * ) ;
   void (*detach)(struct dma_buf * , struct dma_buf_attachment * ) ;
   struct sg_table *(*map_dma_buf)(struct dma_buf_attachment * , enum dma_data_direction ) ;
   void (*unmap_dma_buf)(struct dma_buf_attachment * , struct sg_table * , enum dma_data_direction ) ;
   void (*release)(struct dma_buf * ) ;
   int (*begin_cpu_access)(struct dma_buf * , size_t , size_t , enum dma_data_direction ) ;
   void (*end_cpu_access)(struct dma_buf * , size_t , size_t , enum dma_data_direction ) ;
   void *(*kmap_atomic)(struct dma_buf * , unsigned long ) ;
   void (*kunmap_atomic)(struct dma_buf * , unsigned long , void * ) ;
   void *(*kmap)(struct dma_buf * , unsigned long ) ;
   void (*kunmap)(struct dma_buf * , unsigned long , void * ) ;
   int (*mmap)(struct dma_buf * , struct vm_area_struct * ) ;
   void *(*vmap)(struct dma_buf * ) ;
   void (*vunmap)(struct dma_buf * , void * ) ;
};
struct dma_buf {
   size_t size ;
   struct file *file ;
   struct list_head attachments ;
   struct dma_buf_ops const *ops ;
   struct mutex lock ;
   unsigned int vmapping_counter ;
   void *vmap_ptr ;
   char const *exp_name ;
   struct list_head list_node ;
   void *priv ;
};
struct dma_buf_attachment {
   struct dma_buf *dmabuf ;
   struct device *dev ;
   struct list_head node ;
   void *priv ;
};
struct vb2_alloc_ctx;
struct vb2_fileio_data;
struct vb2_threadio_data;
struct vb2_mem_ops {
   void *(*alloc)(void * , unsigned long , gfp_t ) ;
   void (*put)(void * ) ;
   struct dma_buf *(*get_dmabuf)(void * , unsigned long ) ;
   void *(*get_userptr)(void * , unsigned long , unsigned long , int ) ;
   void (*put_userptr)(void * ) ;
   void (*prepare)(void * ) ;
   void (*finish)(void * ) ;
   void *(*attach_dmabuf)(void * , struct dma_buf * , unsigned long , int ) ;
   void (*detach_dmabuf)(void * ) ;
   int (*map_dmabuf)(void * ) ;
   void (*unmap_dmabuf)(void * ) ;
   void *(*vaddr)(void * ) ;
   void *(*cookie)(void * ) ;
   unsigned int (*num_users)(void * ) ;
   int (*mmap)(void * , struct vm_area_struct * ) ;
};
struct vb2_plane {
   void *mem_priv ;
   struct dma_buf *dbuf ;
   unsigned int dbuf_mapped ;
};
enum vb2_buffer_state {
    VB2_BUF_STATE_DEQUEUED = 0,
    VB2_BUF_STATE_PREPARING = 1,
    VB2_BUF_STATE_PREPARED = 2,
    VB2_BUF_STATE_QUEUED = 3,
    VB2_BUF_STATE_ACTIVE = 4,
    VB2_BUF_STATE_DONE = 5,
    VB2_BUF_STATE_ERROR = 6
} ;
struct vb2_buffer {
   struct v4l2_buffer v4l2_buf ;
   struct v4l2_plane v4l2_planes[8U] ;
   struct vb2_queue *vb2_queue ;
   unsigned int num_planes ;
   enum vb2_buffer_state state ;
   struct list_head queued_entry ;
   struct list_head done_entry ;
   struct vb2_plane planes[8U] ;
   u32 cnt_mem_alloc ;
   u32 cnt_mem_put ;
   u32 cnt_mem_get_dmabuf ;
   u32 cnt_mem_get_userptr ;
   u32 cnt_mem_put_userptr ;
   u32 cnt_mem_prepare ;
   u32 cnt_mem_finish ;
   u32 cnt_mem_attach_dmabuf ;
   u32 cnt_mem_detach_dmabuf ;
   u32 cnt_mem_map_dmabuf ;
   u32 cnt_mem_unmap_dmabuf ;
   u32 cnt_mem_vaddr ;
   u32 cnt_mem_cookie ;
   u32 cnt_mem_num_users ;
   u32 cnt_mem_mmap ;
   u32 cnt_buf_init ;
   u32 cnt_buf_prepare ;
   u32 cnt_buf_finish ;
   u32 cnt_buf_cleanup ;
   u32 cnt_buf_queue ;
   u32 cnt_buf_done ;
};
struct vb2_ops {
   int (*queue_setup)(struct vb2_queue * , struct v4l2_format const * , unsigned int * ,
                      unsigned int * , unsigned int * , void ** ) ;
   void (*wait_prepare)(struct vb2_queue * ) ;
   void (*wait_finish)(struct vb2_queue * ) ;
   int (*buf_init)(struct vb2_buffer * ) ;
   int (*buf_prepare)(struct vb2_buffer * ) ;
   void (*buf_finish)(struct vb2_buffer * ) ;
   void (*buf_cleanup)(struct vb2_buffer * ) ;
   int (*start_streaming)(struct vb2_queue * , unsigned int ) ;
   void (*stop_streaming)(struct vb2_queue * ) ;
   void (*buf_queue)(struct vb2_buffer * ) ;
};
struct vb2_queue {
   enum v4l2_buf_type type ;
   unsigned int io_modes ;
   unsigned int io_flags ;
   struct mutex *lock ;
   struct v4l2_fh *owner ;
   struct vb2_ops const *ops ;
   struct vb2_mem_ops const *mem_ops ;
   void *drv_priv ;
   unsigned int buf_struct_size ;
   u32 timestamp_flags ;
   gfp_t gfp_flags ;
   u32 min_buffers_needed ;
   enum v4l2_memory memory ;
   struct vb2_buffer *bufs[32U] ;
   unsigned int num_buffers ;
   struct list_head queued_list ;
   unsigned int queued_count ;
   atomic_t owned_by_drv_count ;
   struct list_head done_list ;
   spinlock_t done_lock ;
   wait_queue_head_t done_wq ;
   void *alloc_ctx[8U] ;
   unsigned int plane_sizes[8U] ;
   unsigned char streaming : 1 ;
   unsigned char start_streaming_called : 1 ;
   struct vb2_fileio_data *fileio ;
   struct vb2_threadio_data *threadio ;
   u32 cnt_queue_setup ;
   u32 cnt_wait_prepare ;
   u32 cnt_wait_finish ;
   u32 cnt_start_streaming ;
   u32 cnt_stop_streaming ;
};
struct solo_motion_thresholds {
   __u16 thresholds[45U][45U] ;
};
enum SOLO_I2C_STATE {
    IIC_STATE_IDLE = 0,
    IIC_STATE_START = 1,
    IIC_STATE_READ = 2,
    IIC_STATE_WRITE = 3,
    IIC_STATE_STOP = 4
} ;
struct solo_p2m_desc {
   u32 ctrl ;
   u32 cfg ;
   u32 dma_addr ;
   u32 ext_addr ;
};
struct solo_p2m_dev {
   struct mutex mutex ;
   struct completion completion ;
   int desc_count ;
   int desc_idx ;
   struct solo_p2m_desc *descs ;
   int error ;
};
enum solo_enc_types {
    SOLO_ENC_TYPE_STD = 0,
    SOLO_ENC_TYPE_EXT = 1
} ;
struct solo_dev;
struct solo_enc_dev {
   struct solo_dev *solo_dev ;
   struct v4l2_ctrl_handler hdl ;
   struct video_device *vfd ;
   struct mutex lock ;
   spinlock_t motion_lock ;
   u8 ch ;
   u8 mode ;
   u8 gop ;
   u8 qp ;
   u8 interlaced ;
   u8 interval ;
   u8 bw_weight ;
   u16 motion_thresh ;
   struct solo_motion_thresholds motion_thresholds ;
   bool motion_global ;
   bool motion_enabled ;
   u16 width ;
   u16 height ;
   char osd_text[45U] ;
   u8 osd_buf[131072U] ;
   unsigned char vop[64U] ;
   int vop_len ;
   unsigned char jpeg_header[1024U] ;
   int jpeg_len ;
   u32 fmt ;
   enum solo_enc_types type ;
   u32 sequence ;
   struct vb2_queue vidq ;
   struct list_head vidq_active ;
   int desc_count ;
   int desc_nelts ;
   struct solo_p2m_desc *desc_items ;
   dma_addr_t desc_dma ;
   spinlock_t av_lock ;
};
struct snd_card;
struct snd_pcm;
struct solo_dev {
   struct pci_dev *pdev ;
   int type ;
   unsigned int time_sync ;
   unsigned int usec_lsb ;
   unsigned int clock_mhz ;
   u8 *reg_base ;
   int nr_chans ;
   int nr_ext ;
   u32 irq_mask ;
   u32 motion_mask ;
   spinlock_t reg_io_lock ;
   struct v4l2_device v4l2_dev ;
   u8 tw2865 ;
   u8 tw2864 ;
   u8 tw2815 ;
   u8 tw28_cnt ;
   struct i2c_adapter i2c_adap[2U] ;
   enum SOLO_I2C_STATE i2c_state ;
   struct mutex i2c_mutex ;
   int i2c_id ;
   wait_queue_head_t i2c_wait ;
   struct i2c_msg *i2c_msg ;
   unsigned int i2c_msg_num ;
   unsigned int i2c_msg_ptr ;
   struct solo_p2m_dev p2m_dev[4U] ;
   atomic_t p2m_count ;
   int p2m_jiffies ;
   unsigned int p2m_timeouts ;
   struct video_device *vfd ;
   unsigned int erasing ;
   unsigned int frame_blank ;
   u8 cur_disp_ch ;
   wait_queue_head_t disp_thread_wait ;
   struct v4l2_ctrl_handler disp_hdl ;
   struct solo_enc_dev *v4l2_enc[16U] ;
   u16 enc_bw_remain ;
   u8 enc_idx ;
   u32 video_type ;
   u16 video_hsize ;
   u16 video_vsize ;
   u16 vout_hstart ;
   u16 vout_vstart ;
   u16 vin_hstart ;
   u16 vin_vstart ;
   u8 fps ;
   spinlock_t jpeg_qp_lock ;
   u32 jpeg_qp[2U] ;
   struct snd_card *snd_card ;
   struct snd_pcm *snd_pcm ;
   atomic_t snd_users ;
   int g723_hw_idx ;
   struct device dev ;
   int sdram_size ;
   struct bin_attribute sdram_attr ;
   unsigned int sys_config ;
   struct task_struct *ring_thread ;
   wait_queue_head_t ring_thread_wait ;
   void *vh_buf ;
   dma_addr_t vh_dma ;
   int vh_size ;
   struct vb2_queue vidq ;
   struct vb2_alloc_ctx *alloc_ctx ;
   u32 sequence ;
   struct task_struct *kthread ;
   struct mutex lock ;
   spinlock_t slock ;
   int old_write ;
   struct list_head vidq_active ;
};
typedef int ldv_func_ret_type___2;
struct compat_timespec;
struct __anonstruct_futex_17 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_18 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_19 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_2850_16 {
   struct __anonstruct_futex_17 futex ;
   struct __anonstruct_nanosleep_18 nanosleep ;
   struct __anonstruct_poll_19 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_2850_16 ldv_2850 ;
};
struct exec_domain;
struct map_segment;
struct exec_domain {
   char const *name ;
   void (*handler)(int , struct pt_regs * ) ;
   unsigned char pers_low ;
   unsigned char pers_high ;
   unsigned long *signal_map ;
   unsigned long *signal_invmap ;
   struct map_segment *err_map ;
   struct map_segment *socktype_map ;
   struct map_segment *sockopt_map ;
   struct map_segment *af_map ;
   struct module *module ;
   struct exec_domain *next ;
};
struct __anonstruct_mm_segment_t_29 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_29 mm_segment_t;
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int saved_preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
   void *sysenter_return ;
   unsigned char sig_on_uaccess_error : 1 ;
   unsigned char uaccess_err : 1 ;
};
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
enum hrtimer_restart;
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
enum hrtimer_restart;
enum hrtimer_restart;
typedef struct poll_table_struct poll_table;
struct v4l2_capability {
   __u8 driver[16U] ;
   __u8 card[32U] ;
   __u8 bus_info[32U] ;
   __u32 version ;
   __u32 capabilities ;
   __u32 device_caps ;
   __u32 reserved[3U] ;
};
struct v4l2_fmtdesc {
   __u32 index ;
   __u32 type ;
   __u32 flags ;
   __u8 description[32U] ;
   __u32 pixelformat ;
   __u32 reserved[4U] ;
};
struct v4l2_jpegcompression {
   int quality ;
   int APPn ;
   int APP_len ;
   char APP_data[60U] ;
   int COM_len ;
   char COM_data[60U] ;
   __u32 jpeg_markers ;
};
struct v4l2_requestbuffers {
   __u32 count ;
   __u32 type ;
   __u32 memory ;
   __u32 reserved[2U] ;
};
struct v4l2_exportbuffer {
   __u32 type ;
   __u32 index ;
   __u32 plane ;
   __u32 flags ;
   __s32 fd ;
   __u32 reserved[11U] ;
};
struct v4l2_framebuffer {
   __u32 capability ;
   __u32 flags ;
   void *base ;
   struct v4l2_pix_format fmt ;
};
struct v4l2_selection {
   __u32 type ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[9U] ;
};
struct v4l2_input {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 tuner ;
   v4l2_std_id std ;
   __u32 status ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_output {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 modulator ;
   v4l2_std_id std ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_hw_freq_seek {
   __u32 tuner ;
   __u32 type ;
   __u32 seek_upward ;
   __u32 wrap_around ;
   __u32 spacing ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 reserved[5U] ;
};
struct v4l2_audio {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_audioout {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx_entry {
   __u64 offset ;
   __u64 pts ;
   __u32 length ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx {
   __u32 entries ;
   __u32 entries_cap ;
   __u32 reserved[4U] ;
   struct v4l2_enc_idx_entry entry[64U] ;
};
struct __anonstruct_raw_206 {
   __u32 data[8U] ;
};
union __anonunion_ldv_24102_205 {
   struct __anonstruct_raw_206 raw ;
};
struct v4l2_encoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion_ldv_24102_205 ldv_24102 ;
};
struct __anonstruct_stop_208 {
   __u64 pts ;
};
struct __anonstruct_start_209 {
   __s32 speed ;
   __u32 format ;
};
struct __anonstruct_raw_210 {
   __u32 data[16U] ;
};
union __anonunion_ldv_24117_207 {
   struct __anonstruct_stop_208 stop ;
   struct __anonstruct_start_209 start ;
   struct __anonstruct_raw_210 raw ;
};
struct v4l2_decoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion_ldv_24117_207 ldv_24117 ;
};
struct v4l2_dbg_chip_info {
   struct v4l2_dbg_match match ;
   char name[32U] ;
   __u32 flags ;
   __u32 reserved[32U] ;
};
struct v4l2_create_buffers {
   __u32 index ;
   __u32 count ;
   __u32 memory ;
   struct v4l2_format format ;
   __u32 reserved[8U] ;
};
struct v4l2_ioctl_ops {
   int (*vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
   int (*vidioc_g_priority)(struct file * , void * , enum v4l2_priority * ) ;
   int (*vidioc_s_priority)(struct file * , void * , enum v4l2_priority ) ;
   int (*vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_overlay)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_sdr_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sdr_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sdr_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sdr_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
   int (*vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_expbuf)(struct file * , void * , struct v4l2_exportbuffer * ) ;
   int (*vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_create_bufs)(struct file * , void * , struct v4l2_create_buffers * ) ;
   int (*vidioc_prepare_buf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_overlay)(struct file * , void * , unsigned int ) ;
   int (*vidioc_g_fbuf)(struct file * , void * , struct v4l2_framebuffer * ) ;
   int (*vidioc_s_fbuf)(struct file * , void * , struct v4l2_framebuffer const * ) ;
   int (*vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_g_std)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_s_std)(struct file * , void * , v4l2_std_id ) ;
   int (*vidioc_querystd)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
   int (*vidioc_g_input)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_input)(struct file * , void * , unsigned int ) ;
   int (*vidioc_enum_output)(struct file * , void * , struct v4l2_output * ) ;
   int (*vidioc_g_output)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_output)(struct file * , void * , unsigned int ) ;
   int (*vidioc_queryctrl)(struct file * , void * , struct v4l2_queryctrl * ) ;
   int (*vidioc_g_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_s_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_g_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_s_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_try_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_querymenu)(struct file * , void * , struct v4l2_querymenu * ) ;
   int (*vidioc_enumaudio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_g_audio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_s_audio)(struct file * , void * , struct v4l2_audio const * ) ;
   int (*vidioc_enumaudout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_g_audout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_s_audout)(struct file * , void * , struct v4l2_audioout const * ) ;
   int (*vidioc_g_modulator)(struct file * , void * , struct v4l2_modulator * ) ;
   int (*vidioc_s_modulator)(struct file * , void * , struct v4l2_modulator const * ) ;
   int (*vidioc_cropcap)(struct file * , void * , struct v4l2_cropcap * ) ;
   int (*vidioc_g_crop)(struct file * , void * , struct v4l2_crop * ) ;
   int (*vidioc_s_crop)(struct file * , void * , struct v4l2_crop const * ) ;
   int (*vidioc_g_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_s_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_g_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression * ) ;
   int (*vidioc_s_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression const * ) ;
   int (*vidioc_g_enc_index)(struct file * , void * , struct v4l2_enc_idx * ) ;
   int (*vidioc_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_try_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_try_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_g_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_s_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
   int (*vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner const * ) ;
   int (*vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
   int (*vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency const * ) ;
   int (*vidioc_enum_freq_bands)(struct file * , void * , struct v4l2_frequency_band * ) ;
   int (*vidioc_g_sliced_vbi_cap)(struct file * , void * , struct v4l2_sliced_vbi_cap * ) ;
   int (*vidioc_log_status)(struct file * , void * ) ;
   int (*vidioc_s_hw_freq_seek)(struct file * , void * , struct v4l2_hw_freq_seek const * ) ;
   int (*vidioc_g_register)(struct file * , void * , struct v4l2_dbg_register * ) ;
   int (*vidioc_s_register)(struct file * , void * , struct v4l2_dbg_register const * ) ;
   int (*vidioc_g_chip_info)(struct file * , void * , struct v4l2_dbg_chip_info * ) ;
   int (*vidioc_enum_framesizes)(struct file * , void * , struct v4l2_frmsizeenum * ) ;
   int (*vidioc_enum_frameintervals)(struct file * , void * , struct v4l2_frmivalenum * ) ;
   int (*vidioc_s_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_g_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_query_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_enum_dv_timings)(struct file * , void * , struct v4l2_enum_dv_timings * ) ;
   int (*vidioc_dv_timings_cap)(struct file * , void * , struct v4l2_dv_timings_cap * ) ;
   int (*vidioc_g_edid)(struct file * , void * , struct v4l2_edid * ) ;
   int (*vidioc_s_edid)(struct file * , void * , struct v4l2_edid * ) ;
   int (*vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   int (*vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   long (*vidioc_default)(struct file * , void * , bool , unsigned int , void * ) ;
};
struct v4l2_ctrl_config {
   struct v4l2_ctrl_ops const *ops ;
   u32 id ;
   char const *name ;
   enum v4l2_ctrl_type type ;
   s32 min ;
   s32 max ;
   u32 step ;
   s32 def ;
   u32 flags ;
   u32 menu_skip_mask ;
   char const * const *qmenu ;
   s64 const *qmenu_int ;
   unsigned char is_private : 1 ;
};
struct solo_vb2_buf {
   struct vb2_buffer vb ;
   struct list_head list ;
};
typedef __u8 uint8_t;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
struct font_desc {
   int idx ;
   char const *name ;
   int width ;
   int height ;
   void const *data ;
   int pref ;
};
typedef __u32 __le32;
struct paravirt_callee_save {
   void *func ;
};
struct pv_irq_ops {
   struct paravirt_callee_save save_fl ;
   struct paravirt_callee_save restore_fl ;
   struct paravirt_callee_save irq_disable ;
   struct paravirt_callee_save irq_enable ;
   void (*safe_halt)(void) ;
   void (*halt)(void) ;
   void (*adjust_exception_frame)(void) ;
};
enum hrtimer_restart;
typedef __le32 vop_header[16U];
struct solo_enc_buf {
   enum solo_enc_types type ;
   vop_header const *vh ;
   int motion ;
};
enum hrtimer_restart;
struct notifier_block;
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
};
struct plist_head {
   struct list_head node_list ;
};
enum snd_device_type {
    SNDRV_DEV_LOWLEVEL = 0,
    SNDRV_DEV_CONTROL = 1,
    SNDRV_DEV_INFO = 2,
    SNDRV_DEV_BUS = 3,
    SNDRV_DEV_CODEC = 4,
    SNDRV_DEV_PCM = 5,
    SNDRV_DEV_COMPRESS = 6,
    SNDRV_DEV_RAWMIDI = 7,
    SNDRV_DEV_TIMER = 8,
    SNDRV_DEV_SEQUENCER = 9,
    SNDRV_DEV_HWDEP = 10,
    SNDRV_DEV_JACK = 11
} ;
enum snd_device_state {
    SNDRV_DEV_BUILD = 0,
    SNDRV_DEV_REGISTERED = 1,
    SNDRV_DEV_DISCONNECTED = 2
} ;
struct snd_device;
struct snd_device_ops {
   int (*dev_free)(struct snd_device * ) ;
   int (*dev_register)(struct snd_device * ) ;
   int (*dev_disconnect)(struct snd_device * ) ;
};
struct snd_device {
   struct list_head list ;
   struct snd_card *card ;
   enum snd_device_state state ;
   enum snd_device_type type ;
   void *device_data ;
   struct snd_device_ops *ops ;
};
struct snd_info_entry;
struct snd_shutdown_f_ops;
struct snd_mixer_oss;
struct snd_card {
   int number ;
   char id[16U] ;
   char driver[16U] ;
   char shortname[32U] ;
   char longname[80U] ;
   char mixername[80U] ;
   char components[128U] ;
   struct module *module ;
   void *private_data ;
   void (*private_free)(struct snd_card * ) ;
   struct list_head devices ;
   unsigned int last_numid ;
   struct rw_semaphore controls_rwsem ;
   rwlock_t ctl_files_rwlock ;
   int controls_count ;
   int user_ctl_count ;
   struct list_head controls ;
   struct list_head ctl_files ;
   struct snd_info_entry *proc_root ;
   struct snd_info_entry *proc_id ;
   struct proc_dir_entry *proc_root_link ;
   struct list_head files_list ;
   struct snd_shutdown_f_ops *s_f_ops ;
   spinlock_t files_lock ;
   int shutdown ;
   struct completion *release_completion ;
   struct device *dev ;
   struct device card_dev ;
   bool registered ;
   unsigned int power_state ;
   struct mutex power_lock ;
   wait_queue_head_t power_sleep ;
   struct snd_mixer_oss *mixer_oss ;
   int mixer_oss_change_count ;
};
struct snd_aes_iec958 {
   unsigned char status[24U] ;
   unsigned char subcode[147U] ;
   unsigned char pad ;
   unsigned char dig_subframe[4U] ;
};
typedef unsigned long snd_pcm_uframes_t;
typedef long snd_pcm_sframes_t;
typedef int snd_pcm_access_t;
typedef int snd_pcm_format_t;
typedef int snd_pcm_subformat_t;
typedef int snd_pcm_state_t;
union snd_pcm_sync_id {
   unsigned char id[16U] ;
   unsigned short id16[8U] ;
   unsigned int id32[4U] ;
};
typedef int snd_pcm_hw_param_t;
struct snd_interval {
   unsigned int min ;
   unsigned int max ;
   unsigned char openmin : 1 ;
   unsigned char openmax : 1 ;
   unsigned char integer : 1 ;
   unsigned char empty : 1 ;
};
struct snd_mask {
   __u32 bits[8U] ;
};
struct snd_pcm_hw_params {
   unsigned int flags ;
   struct snd_mask masks[3U] ;
   struct snd_mask mres[5U] ;
   struct snd_interval intervals[12U] ;
   struct snd_interval ires[9U] ;
   unsigned int rmask ;
   unsigned int cmask ;
   unsigned int info ;
   unsigned int msbits ;
   unsigned int rate_num ;
   unsigned int rate_den ;
   snd_pcm_uframes_t fifo_size ;
   unsigned char reserved[64U] ;
};
struct snd_pcm_mmap_status {
   snd_pcm_state_t state ;
   int pad1 ;
   snd_pcm_uframes_t hw_ptr ;
   struct timespec tstamp ;
   snd_pcm_state_t suspended_state ;
   struct timespec audio_tstamp ;
};
struct snd_pcm_mmap_control {
   snd_pcm_uframes_t appl_ptr ;
   snd_pcm_uframes_t avail_min ;
};
typedef int snd_ctl_elem_type_t;
typedef int snd_ctl_elem_iface_t;
struct snd_ctl_elem_id {
   unsigned int numid ;
   snd_ctl_elem_iface_t iface ;
   unsigned int device ;
   unsigned int subdevice ;
   unsigned char name[44U] ;
   unsigned int index ;
};
struct __anonstruct_integer_200 {
   long min ;
   long max ;
   long step ;
};
struct __anonstruct_integer64_201 {
   long long min ;
   long long max ;
   long long step ;
};
struct __anonstruct_enumerated_202 {
   unsigned int items ;
   unsigned int item ;
   char name[64U] ;
   __u64 names_ptr ;
   unsigned int names_length ;
};
union __anonunion_value_199 {
   struct __anonstruct_integer_200 integer ;
   struct __anonstruct_integer64_201 integer64 ;
   struct __anonstruct_enumerated_202 enumerated ;
   unsigned char reserved[128U] ;
};
union __anonunion_dimen_203 {
   unsigned short d[4U] ;
   unsigned short *d_ptr ;
};
struct snd_ctl_elem_info {
   struct snd_ctl_elem_id id ;
   snd_ctl_elem_type_t type ;
   unsigned int access ;
   unsigned int count ;
   __kernel_pid_t owner ;
   union __anonunion_value_199 value ;
   union __anonunion_dimen_203 dimen ;
   unsigned char reserved[56U] ;
};
union __anonunion_integer_205 {
   long value[128U] ;
   long *value_ptr ;
};
union __anonunion_integer64_206 {
   long long value[64U] ;
   long long *value_ptr ;
};
union __anonunion_enumerated_207 {
   unsigned int item[128U] ;
   unsigned int *item_ptr ;
};
union __anonunion_bytes_208 {
   unsigned char data[512U] ;
   unsigned char *data_ptr ;
};
union __anonunion_value_204 {
   union __anonunion_integer_205 integer ;
   union __anonunion_integer64_206 integer64 ;
   union __anonunion_enumerated_207 enumerated ;
   union __anonunion_bytes_208 bytes ;
   struct snd_aes_iec958 iec958 ;
};
struct snd_ctl_elem_value {
   struct snd_ctl_elem_id id ;
   unsigned char indirect : 1 ;
   union __anonunion_value_204 value ;
   struct timespec tstamp ;
   unsigned char reserved[112U] ;
};
struct snd_dma_device {
   int type ;
   struct device *dev ;
};
struct snd_dma_buffer {
   struct snd_dma_device dev ;
   unsigned char *area ;
   dma_addr_t addr ;
   size_t bytes ;
   void *private_data ;
};
struct pm_qos_request {
   struct plist_node node ;
   int pm_qos_class ;
   struct delayed_work work ;
};
struct pm_qos_flags_request {
   struct list_head node ;
   s32 flags ;
};
enum dev_pm_qos_req_type {
    DEV_PM_QOS_RESUME_LATENCY = 1,
    DEV_PM_QOS_LATENCY_TOLERANCE = 2,
    DEV_PM_QOS_FLAGS = 3
} ;
union __anonunion_data_211 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_211 data ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   s32 no_constraint_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints resume_latency ;
   struct pm_qos_constraints latency_tolerance ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *resume_latency_req ;
   struct dev_pm_qos_request *latency_tolerance_req ;
   struct dev_pm_qos_request *flags_req ;
};
struct snd_pcm_oss_setup {
   char *task_name ;
   unsigned char disable : 1 ;
   unsigned char direct : 1 ;
   unsigned char block : 1 ;
   unsigned char nonblock : 1 ;
   unsigned char partialfrag : 1 ;
   unsigned char nosilence : 1 ;
   unsigned char buggyptr : 1 ;
   unsigned int periods ;
   unsigned int period_size ;
   struct snd_pcm_oss_setup *next ;
};
struct snd_pcm_plugin;
struct snd_pcm_oss_runtime {
   unsigned char params : 1 ;
   unsigned char prepare : 1 ;
   unsigned char trigger : 1 ;
   unsigned char sync_trigger : 1 ;
   int rate ;
   int format ;
   unsigned int channels ;
   unsigned int fragshift ;
   unsigned int maxfrags ;
   unsigned int subdivision ;
   size_t period_bytes ;
   size_t period_frames ;
   size_t period_ptr ;
   unsigned int periods ;
   size_t buffer_bytes ;
   size_t bytes ;
   size_t mmap_bytes ;
   char *buffer ;
   size_t buffer_used ;
   struct mutex params_lock ;
   struct snd_pcm_plugin *plugin_first ;
   struct snd_pcm_plugin *plugin_last ;
   unsigned int prev_hw_ptr_period ;
};
struct snd_pcm_oss_substream {
   unsigned char oss : 1 ;
   struct snd_pcm_oss_setup setup ;
};
struct snd_pcm_oss_stream {
   struct snd_pcm_oss_setup *setup_list ;
   struct mutex setup_mutex ;
   struct snd_info_entry *proc_entry ;
};
struct snd_pcm_oss {
   int reg ;
   unsigned int reg_mask ;
};
struct snd_pcm_hardware {
   unsigned int info ;
   u64 formats ;
   unsigned int rates ;
   unsigned int rate_min ;
   unsigned int rate_max ;
   unsigned int channels_min ;
   unsigned int channels_max ;
   size_t buffer_bytes_max ;
   size_t period_bytes_min ;
   size_t period_bytes_max ;
   unsigned int periods_min ;
   unsigned int periods_max ;
   size_t fifo_size ;
};
struct snd_pcm_ops {
   int (*open)(struct snd_pcm_substream * ) ;
   int (*close)(struct snd_pcm_substream * ) ;
   int (*ioctl)(struct snd_pcm_substream * , unsigned int , void * ) ;
   int (*hw_params)(struct snd_pcm_substream * , struct snd_pcm_hw_params * ) ;
   int (*hw_free)(struct snd_pcm_substream * ) ;
   int (*prepare)(struct snd_pcm_substream * ) ;
   int (*trigger)(struct snd_pcm_substream * , int ) ;
   snd_pcm_uframes_t (*pointer)(struct snd_pcm_substream * ) ;
   int (*wall_clock)(struct snd_pcm_substream * , struct timespec * ) ;
   int (*copy)(struct snd_pcm_substream * , int , snd_pcm_uframes_t , void * , snd_pcm_uframes_t ) ;
   int (*silence)(struct snd_pcm_substream * , int , snd_pcm_uframes_t , snd_pcm_uframes_t ) ;
   struct page *(*page)(struct snd_pcm_substream * , unsigned long ) ;
   int (*mmap)(struct snd_pcm_substream * , struct vm_area_struct * ) ;
   int (*ack)(struct snd_pcm_substream * ) ;
};
struct snd_pcm_hw_rule;
struct snd_pcm_hw_rule {
   unsigned int cond ;
   int (*func)(struct snd_pcm_hw_params * , struct snd_pcm_hw_rule * ) ;
   int var ;
   int deps[4U] ;
   void *private ;
};
struct snd_pcm_hw_constraints {
   struct snd_mask masks[3U] ;
   struct snd_interval intervals[12U] ;
   unsigned int rules_num ;
   unsigned int rules_all ;
   struct snd_pcm_hw_rule *rules ;
};
struct snd_pcm_hwptr_log;
struct snd_pcm_runtime {
   struct snd_pcm_substream *trigger_master ;
   struct timespec trigger_tstamp ;
   int overrange ;
   snd_pcm_uframes_t avail_max ;
   snd_pcm_uframes_t hw_ptr_base ;
   snd_pcm_uframes_t hw_ptr_interrupt ;
   unsigned long hw_ptr_jiffies ;
   unsigned long hw_ptr_buffer_jiffies ;
   snd_pcm_sframes_t delay ;
   u64 hw_ptr_wrap ;
   snd_pcm_access_t access ;
   snd_pcm_format_t format ;
   snd_pcm_subformat_t subformat ;
   unsigned int rate ;
   unsigned int channels ;
   snd_pcm_uframes_t period_size ;
   unsigned int periods ;
   snd_pcm_uframes_t buffer_size ;
   snd_pcm_uframes_t min_align ;
   size_t byte_align ;
   unsigned int frame_bits ;
   unsigned int sample_bits ;
   unsigned int info ;
   unsigned int rate_num ;
   unsigned int rate_den ;
   unsigned char no_period_wakeup : 1 ;
   int tstamp_mode ;
   unsigned int period_step ;
   snd_pcm_uframes_t start_threshold ;
   snd_pcm_uframes_t stop_threshold ;
   snd_pcm_uframes_t silence_threshold ;
   snd_pcm_uframes_t silence_size ;
   snd_pcm_uframes_t boundary ;
   snd_pcm_uframes_t silence_start ;
   snd_pcm_uframes_t silence_filled ;
   union snd_pcm_sync_id sync ;
   struct snd_pcm_mmap_status *status ;
   struct snd_pcm_mmap_control *control ;
   snd_pcm_uframes_t twake ;
   wait_queue_head_t sleep ;
   wait_queue_head_t tsleep ;
   struct fasync_struct *fasync ;
   void *private_data ;
   void (*private_free)(struct snd_pcm_runtime * ) ;
   struct snd_pcm_hardware hw ;
   struct snd_pcm_hw_constraints hw_constraints ;
   void (*transfer_ack_begin)(struct snd_pcm_substream * ) ;
   void (*transfer_ack_end)(struct snd_pcm_substream * ) ;
   unsigned int timer_resolution ;
   int tstamp_type ;
   unsigned char *dma_area ;
   dma_addr_t dma_addr ;
   size_t dma_bytes ;
   struct snd_dma_buffer *dma_buffer_p ;
   struct snd_pcm_oss_runtime oss ;
   struct snd_pcm_hwptr_log *hwptr_log ;
};
struct snd_pcm_group {
   spinlock_t lock ;
   struct list_head substreams ;
   int count ;
};
struct snd_pcm_str;
struct snd_timer;
struct snd_pcm_substream {
   struct snd_pcm *pcm ;
   struct snd_pcm_str *pstr ;
   void *private_data ;
   int number ;
   char name[32U] ;
   int stream ;
   struct pm_qos_request latency_pm_qos_req ;
   size_t buffer_bytes_max ;
   struct snd_dma_buffer dma_buffer ;
   size_t dma_max ;
   struct snd_pcm_ops const *ops ;
   struct snd_pcm_runtime *runtime ;
   struct snd_timer *timer ;
   unsigned char timer_running : 1 ;
   struct snd_pcm_substream *next ;
   struct list_head link_list ;
   struct snd_pcm_group self_group ;
   struct snd_pcm_group *group ;
   void *file ;
   int ref_count ;
   atomic_t mmap_count ;
   unsigned int f_flags ;
   void (*pcm_release)(struct snd_pcm_substream * ) ;
   struct pid *pid ;
   struct snd_pcm_oss_substream oss ;
   struct snd_info_entry *proc_root ;
   struct snd_info_entry *proc_info_entry ;
   struct snd_info_entry *proc_hw_params_entry ;
   struct snd_info_entry *proc_sw_params_entry ;
   struct snd_info_entry *proc_status_entry ;
   struct snd_info_entry *proc_prealloc_entry ;
   struct snd_info_entry *proc_prealloc_max_entry ;
   unsigned char hw_opened : 1 ;
};
struct snd_pcm_str {
   int stream ;
   struct snd_pcm *pcm ;
   unsigned int substream_count ;
   unsigned int substream_opened ;
   struct snd_pcm_substream *substream ;
   struct snd_pcm_oss_stream oss ;
   struct snd_info_entry *proc_root ;
   struct snd_info_entry *proc_info_entry ;
   unsigned int xrun_debug ;
   struct snd_info_entry *proc_xrun_debug_entry ;
   struct snd_kcontrol *chmap_kctl ;
};
struct snd_pcm {
   struct snd_card *card ;
   struct list_head list ;
   int device ;
   unsigned int info_flags ;
   unsigned short dev_class ;
   unsigned short dev_subclass ;
   char id[64U] ;
   char name[80U] ;
   struct snd_pcm_str streams[2U] ;
   struct mutex open_mutex ;
   wait_queue_head_t open_wait ;
   void *private_data ;
   void (*private_free)(struct snd_pcm * ) ;
   struct device *dev ;
   bool internal ;
   struct snd_pcm_oss oss ;
};
typedef int snd_kcontrol_info_t(struct snd_kcontrol * , struct snd_ctl_elem_info * );
typedef int snd_kcontrol_get_t(struct snd_kcontrol * , struct snd_ctl_elem_value * );
typedef int snd_kcontrol_put_t(struct snd_kcontrol * , struct snd_ctl_elem_value * );
typedef int snd_kcontrol_tlv_rw_t(struct snd_kcontrol * , int , unsigned int , unsigned int * );
union __anonunion_tlv_212 {
   snd_kcontrol_tlv_rw_t *c ;
   unsigned int const *p ;
};
struct snd_kcontrol_new {
   snd_ctl_elem_iface_t iface ;
   unsigned int device ;
   unsigned int subdevice ;
   unsigned char const *name ;
   unsigned int index ;
   unsigned int access ;
   unsigned int count ;
   snd_kcontrol_info_t *info ;
   snd_kcontrol_get_t *get ;
   snd_kcontrol_put_t *put ;
   union __anonunion_tlv_212 tlv ;
   unsigned long private_value ;
};
struct snd_ctl_file;
struct snd_kcontrol_volatile {
   struct snd_ctl_file *owner ;
   unsigned int access ;
};
union __anonunion_tlv_213 {
   snd_kcontrol_tlv_rw_t *c ;
   unsigned int const *p ;
};
struct snd_kcontrol {
   struct list_head list ;
   struct snd_ctl_elem_id id ;
   unsigned int count ;
   snd_kcontrol_info_t *info ;
   snd_kcontrol_get_t *get ;
   snd_kcontrol_put_t *put ;
   union __anonunion_tlv_213 tlv ;
   unsigned long private_value ;
   void *private_data ;
   void (*private_free)(struct snd_kcontrol * ) ;
   struct snd_kcontrol_volatile vd[0U] ;
};
struct snd_ctl_file {
   struct list_head list ;
   struct snd_card *card ;
   struct pid *pid ;
   int prefer_pcm_subdevice ;
   int prefer_rawmidi_subdevice ;
   wait_queue_head_t change_sleep ;
   spinlock_t read_lock ;
   struct fasync_struct *fasync ;
   int subscribed ;
   struct list_head events ;
};
struct solo_snd_pcm {
   int on ;
   spinlock_t lock ;
   struct solo_dev *solo_dev ;
   unsigned char *g723_buf ;
   dma_addr_t g723_dma ;
};
enum hrtimer_restart;
typedef struct page___0 *pgtable_t___0;
struct __anonstruct____missing_field_name_211 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_210 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_211 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_209 {
   union __anonunion____missing_field_name_210 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_208 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_209 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_206 {
   union __anonunion_ldv_14126_140 __annonCompField38 ;
   union __anonunion____missing_field_name_208 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_213 {
   struct page___0 *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_212 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_213 __annonCompField44 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t___0 pmd_huge_pte ;
};
union __anonunion____missing_field_name_214 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache___0 *slab_cache ;
   struct page___0 *first_page ;
};
struct page___0 {
   unsigned long flags ;
   union __anonunion_ldv_14120_138 __annonCompField37 ;
   struct __anonstruct____missing_field_name_206 __annonCompField43 ;
   union __anonunion____missing_field_name_212 __annonCompField45 ;
   union __anonunion____missing_field_name_214 __annonCompField46 ;
   unsigned long debug_flags ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
enum kobj_ns_type;
struct attribute___0 {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep : 1 ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct sysfs_ops___0 {
   ssize_t (*show)(struct kobject___0 * , struct attribute___0 * , char * ) ;
   ssize_t (*store)(struct kobject___0 * , struct attribute___0 * , char const * ,
                    size_t ) ;
};
struct kobject___0 {
   char const *name ;
   struct list_head entry ;
   struct kobject___0 *parent ;
   struct kset *kset ;
   struct kobj_type___0 *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type___0 {
   void (*release)(struct kobject___0 *kobj ) ;
   struct sysfs_ops___0 const *sysfs_ops ;
   struct attribute___0 **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject___0 *kobj ) ;
   void const *(*namespace)(struct kobject___0 *kobj ) ;
};
struct kmem_cache_cpu___0 {
   void **freelist ;
   unsigned long tid ;
   struct page___0 *page ;
   struct page___0 *partial ;
   unsigned int stat[26] ;
};
struct kmem_cache___0 {
   struct kmem_cache_cpu___0 *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int object_size ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject___0 kobj ;
   struct memcg_cache_params___0 *memcg_params ;
   int max_attr_size ;
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1 << 10] ;
};
struct __anonstruct____missing_field_name_227 {
   struct callback_head callback_head ;
   struct kmem_cache___0 *memcg_caches[0] ;
};
struct __anonstruct____missing_field_name_228 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache___0 *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion____missing_field_name_226 {
   struct __anonstruct____missing_field_name_227 __annonCompField50 ;
   struct __anonstruct____missing_field_name_228 __annonCompField51 ;
};
struct memcg_cache_params___0 {
   bool is_root_cache ;
   union __anonunion____missing_field_name_226 __annonCompField52 ;
};
long ldv__builtin_expect(long exp , long c ) ;
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
extern struct module __this_module ;
__inline static unsigned int __arch_hweight32(unsigned int w )
{
  unsigned int res ;
  {
  res = 0U;
  __asm__ ("661:\n\tcall __sw_hweight32\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (4*32+23)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0xf3,0x40,0x0f,0xb8,0xc7\n6641:\n\t.popsection": "=a" (res): "D" (w));
  return (res);
}
}
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
extern int kstrtoull(char const * , unsigned int , unsigned long long * ) ;
__inline static int kstrtoul(char const *s , unsigned int base , unsigned long *res )
{
  int tmp ;
  {
  tmp = kstrtoull(s, base, (unsigned long long *)res);
  return (tmp);
}
}
extern int sprintf(char * , char const * , ...) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6347.rlock);
}
}
__inline static void ldv_spin_unlock_irqrestore_8(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_6347.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern unsigned int jiffies_to_msecs(unsigned long const ) ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern void ktime_get_ts(struct timespec * ) ;
__inline static unsigned int readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
extern void pci_iounmap(struct pci_dev * , void * ) ;
extern void kfree(void const * ) ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
extern void *malloc(size_t size ) ;
extern void *calloc(size_t nmemb , size_t size ) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
extern void __VERIFIER_assume(int expression ) ;
void *ldv_malloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = malloc(size);
    p = tmp;
    __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = calloc(1UL, size);
    p = tmp;
    __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
int ldv_undef_int(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  return (tmp);
}
}
void *ldv_undef_ptr(void)
{
  void *tmp ;
  {
  tmp = __VERIFIER_nondet_pointer();
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  tmp = __VERIFIER_nondet_ulong();
  return (tmp);
}
}
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
}
}
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
void ldv__builtin_trap(void)
{
  {
  ldv_error();
  return;
}
}
int ldv_state_variable_8 ;
int ldv_state_variable_15 ;
struct vb2_queue *solo_enc_video_qops_group0 ;
struct file *solo_enc_ioctl_ops_group4 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_state_variable_13 ;
int ldv_state_variable_12 ;
int ldv_state_variable_14 ;
struct v4l2_fh *solo_v4l2_ioctl_ops_group2 ;
struct file *solo_enc_fops_group0 ;
struct v4l2_format *solo_v4l2_ioctl_ops_group0 ;
int ldv_state_variable_9 ;
struct v4l2_buffer *solo_enc_ioctl_ops_group5 ;
int ref_cnt ;
struct v4l2_event_subscription *solo_v4l2_ioctl_ops_group1 ;
int ldv_irq_line_1_1 ;
struct pci_dev *solo_pci_driver_group0 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
struct v4l2_format *solo_enc_ioctl_ops_group0 ;
int ldv_irq_line_1_2 ;
struct i2c_adapter *solo_i2c_algo_group0 ;
int ldv_irq_1_3 = 0;
struct file *solo_v4l2_fops_group0 ;
void *ldv_irq_data_1_1 ;
int ldv_state_variable_10 ;
int ldv_irq_1_0 = 0;
void *ldv_irq_data_1_0 ;
int ldv_state_variable_6 ;
struct v4l2_event_subscription *solo_enc_ioctl_ops_group1 ;
void *ldv_irq_data_1_3 ;
int ldv_state_variable_2 ;
struct v4l2_fh *solo_enc_ioctl_ops_group2 ;
void *ldv_irq_data_1_2 ;
int ldv_state_variable_11 ;
int ldv_irq_1_2 = 0;
int LDV_IN_INTERRUPT = 1;
struct v4l2_buffer *solo_v4l2_ioctl_ops_group4 ;
int ldv_irq_1_1 = 0;
struct vb2_queue *solo_video_qops_group0 ;
int ldv_irq_line_1_3 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
struct v4l2_streamparm *solo_enc_ioctl_ops_group3 ;
struct snd_pcm_substream *snd_solo_pcm_ops_group0 ;
int ldv_state_variable_4 ;
struct snd_kcontrol *snd_solo_capture_volume_group0 ;
struct file *solo_v4l2_ioctl_ops_group3 ;
struct snd_ctl_elem_value *snd_solo_capture_volume_group1 ;
void ldv_initialize_vb2_ops_8(void) ;
void ldv_initialize_i2c_algorithm_14(void) ;
void ldv_initialize_v4l2_file_operations_7(void) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void ldv_initialize_snd_pcm_ops_3(void) ;
void ldv_initialize_v4l2_ioctl_ops_6(void) ;
void ldv_initialize_v4l2_file_operations_12(void) ;
void choose_interrupt_1(void) ;
void ldv_initialize_snd_kcontrol_new_2(void) ;
void disable_suitable_irq_1(int line , void *data ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void activate_suitable_irq_1(int line , void *data ) ;
void ldv_initialize_v4l2_ioctl_ops_11(void) ;
void ldv_initialize_pci_driver_15(void) ;
void ldv_initialize_vb2_ops_13(void) ;
extern int device_create_file(struct device * , struct device_attribute const * ) ;
extern int device_create_bin_file(struct device * , struct bin_attribute const * ) ;
extern int dev_set_name(struct device * , char const * , ...) ;
__inline static int dev_to_node(struct device *dev )
{
  {
  return (dev->numa_node);
}
}
__inline static void set_dev_node(struct device *dev , int node )
{
  {
  dev->numa_node = node;
  return;
}
}
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
__inline static void dev_set_drvdata(struct device *dev , void *data )
{
  {
  dev->driver_data = data;
  return;
}
}
extern int device_register(struct device * ) ;
extern void device_unregister(struct device * ) ;
extern int dev_warn(struct device const * , char const * , ...) ;
extern int _dev_info(struct device const * , char const * , ...) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
extern int pci_bus_write_config_byte(struct pci_bus * , unsigned int , int , u8 ) ;
__inline static int pci_read_config_word(struct pci_dev const *dev , int where ,
                                         u16 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
__inline static int pci_write_config_byte(struct pci_dev const *dev , int where ,
                                          u8 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_byte(dev->bus, dev->devfn, where, (int )val);
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  dev_set_drvdata(& pdev->dev, data);
  return;
}
}
extern void *pci_ioremap_bar(struct pci_dev * , int ) ;
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  tmp = request_threaded_irq(irq, handler, (irqreturn_t (*)(int , void * ))0, flags,
                             name, dev);
  return (tmp);
}
}
__inline static int ldv_request_irq_21(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_20(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void __const_udelay(unsigned long ) ;
extern int v4l2_device_register(struct device * , struct v4l2_device * ) ;
extern void v4l2_device_unregister(struct v4l2_device * ) ;
__inline static u32 solo_reg_read(struct solo_dev *solo_dev , int reg )
{
  unsigned long flags ;
  u32 ret ;
  u16 val ;
  {
  ldv_spin_lock();
  ret = readl((void const volatile *)solo_dev->reg_base + (unsigned long )reg);
  __asm__ volatile ("lfence": : : "memory");
  pci_read_config_word((struct pci_dev const *)solo_dev->pdev, 6, & val);
  __asm__ volatile ("lfence": : : "memory");
  spin_unlock_irqrestore(& solo_dev->reg_io_lock, flags);
  return (ret);
}
}
__inline static void solo_reg_write(struct solo_dev *solo_dev , int reg , u32 data )
{
  unsigned long flags ;
  u16 val ;
  {
  ldv_spin_lock();
  writel(data, (void volatile *)solo_dev->reg_base + (unsigned long )reg);
  __asm__ volatile ("sfence": : : "memory");
  pci_read_config_word((struct pci_dev const *)solo_dev->pdev, 6, & val);
  __asm__ volatile ("lfence": : : "memory");
  spin_unlock_irqrestore(& solo_dev->reg_io_lock, flags);
  return;
}
}
__inline static void solo_irq_on(struct solo_dev *dev , u32 mask )
{
  {
  dev->irq_mask = dev->irq_mask | mask;
  solo_reg_write(dev, 20, dev->irq_mask);
  return;
}
}
__inline static void solo_irq_off(struct solo_dev *dev , u32 mask )
{
  {
  dev->irq_mask = dev->irq_mask & ~ mask;
  solo_reg_write(dev, 20, dev->irq_mask);
  return;
}
}
int solo_disp_init(struct solo_dev *solo_dev ) ;
void solo_disp_exit(struct solo_dev *solo_dev ) ;
int solo_gpio_init(struct solo_dev *solo_dev ) ;
void solo_gpio_exit(struct solo_dev *solo_dev ) ;
int solo_i2c_init(struct solo_dev *solo_dev ) ;
void solo_i2c_exit(struct solo_dev *solo_dev ) ;
int solo_p2m_init(struct solo_dev *solo_dev ) ;
void solo_p2m_exit(struct solo_dev *solo_dev ) ;
int solo_v4l2_init(struct solo_dev *solo_dev , unsigned int nr ) ;
void solo_v4l2_exit(struct solo_dev *solo_dev ) ;
int solo_enc_init(struct solo_dev *solo_dev ) ;
void solo_enc_exit(struct solo_dev *solo_dev ) ;
int solo_enc_v4l2_init(struct solo_dev *solo_dev , unsigned int nr ) ;
void solo_enc_v4l2_exit(struct solo_dev *solo_dev ) ;
int solo_g723_init(struct solo_dev *solo_dev ) ;
void solo_g723_exit(struct solo_dev *solo_dev ) ;
int solo_i2c_isr(struct solo_dev *solo_dev ) ;
void solo_p2m_isr(struct solo_dev *solo_dev , int id ) ;
void solo_p2m_error_isr(struct solo_dev *solo_dev ) ;
void solo_enc_v4l2_isr(struct solo_dev *solo_dev ) ;
void solo_g723_isr(struct solo_dev *solo_dev ) ;
void solo_video_in_isr(struct solo_dev *solo_dev ) ;
int solo_p2m_dma(struct solo_dev *solo_dev , int wr , void *sys_addr , u32 ext_addr ,
                 u32 size , int repeat , u32 ext_size ) ;
unsigned int solo_eeprom_ewen(struct solo_dev *solo_dev , int w_en ) ;
unsigned short solo_eeprom_read(struct solo_dev *solo_dev , int loc ) ;
int solo_eeprom_write(struct solo_dev *solo_dev , int loc , unsigned short data ) ;
int solo_tw28_init(struct solo_dev *solo_dev ) ;
static unsigned int video_nr = 4294967295U;
static int full_eeprom ;
static void solo_set_time(struct solo_dev *solo_dev )
{
  struct timespec ts ;
  {
  ktime_get_ts(& ts);
  solo_reg_write(solo_dev, 3052, (u32 )ts.tv_sec);
  solo_reg_write(solo_dev, 3048, (u32 )(ts.tv_nsec / 1000L));
  return;
}
}
static void solo_timer_sync(struct solo_dev *solo_dev )
{
  u32 sec ;
  u32 usec ;
  struct timespec ts ;
  long diff ;
  long usec_lsb ;
  {
  if (solo_dev->type != 1) {
    return;
  } else {
  }
  solo_dev->time_sync = solo_dev->time_sync + 1U;
  if (solo_dev->time_sync <= 59U) {
    return;
  } else {
  }
  solo_dev->time_sync = 0U;
  sec = solo_reg_read(solo_dev, 3052);
  usec = solo_reg_read(solo_dev, 3048);
  ktime_get_ts(& ts);
  diff = ts.tv_sec - (long )sec;
  diff = diff * 1000000L + (ts.tv_nsec / 1000L - (long )usec);
  if (diff > 1000L || diff < -1000L) {
    solo_set_time(solo_dev);
  } else
  if (diff != 0L) {
    usec_lsb = (long )solo_dev->usec_lsb;
    usec_lsb = usec_lsb - diff / 4L;
    if (usec_lsb < 0L) {
      usec_lsb = 0L;
    } else
    if (usec_lsb > 255L) {
      usec_lsb = 255L;
    } else {
    }
    solo_dev->usec_lsb = (unsigned int )usec_lsb;
    solo_reg_write(solo_dev, 3360, solo_dev->usec_lsb);
  } else {
  }
  return;
}
}
static irqreturn_t solo_isr(int irq , void *data )
{
  struct solo_dev *solo_dev ;
  u32 status ;
  int i ;
  {
  solo_dev = (struct solo_dev *)data;
  status = solo_reg_read(solo_dev, 16);
  if (status == 0U) {
    return (0);
  } else {
  }
  if ((~ solo_dev->irq_mask & status) != 0U) {
    solo_reg_write(solo_dev, 16, ~ solo_dev->irq_mask & status);
    status = solo_dev->irq_mask & status;
  } else {
  }
  if ((status & 1024U) != 0U) {
    solo_p2m_error_isr(solo_dev);
  } else {
  }
  i = 0;
  goto ldv_35587;
  ldv_35586: ;
  if (((u32 )(1 << (i + 17)) & status) != 0U) {
    solo_p2m_isr(solo_dev, i);
  } else {
  }
  i = i + 1;
  ldv_35587: ;
  if (i <= 3) {
    goto ldv_35586;
  } else {
  }
  if ((status & 64U) != 0U) {
    solo_i2c_isr(solo_dev);
  } else {
  }
  if ((status & 16384U) != 0U) {
    solo_video_in_isr(solo_dev);
    solo_timer_sync(solo_dev);
  } else {
  }
  if ((int )status & 1) {
    solo_enc_v4l2_isr(solo_dev);
  } else {
  }
  if ((status & 8U) != 0U) {
    solo_g723_isr(solo_dev);
  } else {
  }
  solo_reg_write(solo_dev, 16, status);
  return (1);
}
}
static void free_solo_dev(struct solo_dev *solo_dev )
{
  struct pci_dev *pdev ;
  {
  if ((unsigned long )solo_dev == (unsigned long )((struct solo_dev *)0)) {
    return;
  } else {
  }
  if ((unsigned long )solo_dev->dev.parent != (unsigned long )((struct device *)0)) {
    device_unregister(& solo_dev->dev);
  } else {
  }
  pdev = solo_dev->pdev;
  if ((unsigned long )pdev == (unsigned long )((struct pci_dev *)0)) {
    kfree((void const *)solo_dev);
    return;
  } else {
  }
  if ((unsigned long )solo_dev->reg_base != (unsigned long )((u8 *)0U)) {
    solo_g723_exit(solo_dev);
    solo_enc_v4l2_exit(solo_dev);
    solo_enc_exit(solo_dev);
    solo_v4l2_exit(solo_dev);
    solo_disp_exit(solo_dev);
    solo_gpio_exit(solo_dev);
    solo_p2m_exit(solo_dev);
    solo_i2c_exit(solo_dev);
    solo_irq_off(solo_dev, 4294967295U);
    pci_iounmap(pdev, (void *)solo_dev->reg_base);
    if (pdev->irq != 0U) {
      ldv_free_irq_20(pdev->irq, (void *)solo_dev);
    } else {
    }
  } else {
  }
  pci_release_regions(pdev);
  pci_disable_device(pdev);
  v4l2_device_unregister(& solo_dev->v4l2_dev);
  pci_set_drvdata(pdev, (void *)0);
  kfree((void const *)solo_dev);
  return;
}
}
static ssize_t eeprom_store(struct device *dev , struct device_attribute *attr , char const *buf ,
                            size_t count )
{
  struct solo_dev *solo_dev ;
  struct device const *__mptr ;
  unsigned short *p ;
  int i ;
  __u16 tmp ;
  int _min1 ;
  int _min2 ;
  {
  __mptr = (struct device const *)dev;
  solo_dev = (struct solo_dev *)__mptr + 0xffffffffffffe6e0UL;
  p = (unsigned short *)buf;
  if ((int )count & 1) {
    dev_warn((struct device const *)dev, "EEPROM Write not aligned (truncating)\n");
  } else {
  }
  if (full_eeprom == 0 && count > 64UL) {
    dev_warn((struct device const *)dev, "EEPROM Write truncated to 64 bytes\n");
    count = 64UL;
  } else
  if (full_eeprom != 0 && count > 128UL) {
    dev_warn((struct device const *)dev, "EEPROM Write truncated to 128 bytes\n");
    count = 128UL;
  } else {
  }
  solo_eeprom_ewen(solo_dev, 1);
  i = full_eeprom != 0 ? 0 : 32;
  goto ldv_35608;
  ldv_35607:
  tmp = __fswab16((int )*(p + (unsigned long )i));
  solo_eeprom_write(solo_dev, i, (int )tmp);
  i = i + 1;
  ldv_35608:
  _min1 = full_eeprom != 0 ? 64 : 32;
  _min2 = (int )(count / 2UL);
  if ((_min1 < _min2 ? _min1 : _min2) > i) {
    goto ldv_35607;
  } else {
  }
  solo_eeprom_ewen(solo_dev, 0);
  return ((ssize_t )count);
}
}
static ssize_t eeprom_show(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct solo_dev *solo_dev ;
  struct device const *__mptr ;
  unsigned short *p ;
  int count ;
  int i ;
  unsigned short tmp ;
  __u16 tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  solo_dev = (struct solo_dev *)__mptr + 0xffffffffffffe6e0UL;
  p = (unsigned short *)buf;
  count = full_eeprom != 0 ? 128 : 64;
  i = full_eeprom != 0 ? 0 : 32;
  goto ldv_35622;
  ldv_35621:
  tmp = solo_eeprom_read(solo_dev, i);
  tmp___0 = __fswab16((int )tmp);
  *(p + (unsigned long )i) = tmp___0;
  i = i + 1;
  ldv_35622: ;
  if (count / 2 > i) {
    goto ldv_35621;
  } else {
  }
  return ((ssize_t )count);
}
}
static ssize_t p2m_timeouts_show(struct device *dev , struct device_attribute *attr ,
                                 char *buf )
{
  struct solo_dev *solo_dev ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  solo_dev = (struct solo_dev *)__mptr + 0xffffffffffffe6e0UL;
  tmp = sprintf(buf, "%d\n", solo_dev->p2m_timeouts);
  return ((ssize_t )tmp);
}
}
static ssize_t sdram_size_show(struct device *dev , struct device_attribute *attr ,
                               char *buf )
{
  struct solo_dev *solo_dev ;
  struct device const *__mptr ;
  int tmp ;
  {
  __mptr = (struct device const *)dev;
  solo_dev = (struct solo_dev *)__mptr + 0xffffffffffffe6e0UL;
  tmp = sprintf(buf, "%dMegs\n", solo_dev->sdram_size >> 20);
  return ((ssize_t )tmp);
}
}
static ssize_t tw28xx_show(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct solo_dev *solo_dev ;
  struct device const *__mptr ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  {
  __mptr = (struct device const *)dev;
  solo_dev = (struct solo_dev *)__mptr + 0xffffffffffffe6e0UL;
  tmp = __arch_hweight32((unsigned int )solo_dev->tw2865);
  tmp___0 = __arch_hweight32((unsigned int )solo_dev->tw2864);
  tmp___1 = __arch_hweight32((unsigned int )solo_dev->tw2815);
  tmp___2 = sprintf(buf, "tw2815[%d] tw2864[%d] tw2865[%d]\n", tmp___1, tmp___0, tmp);
  return ((ssize_t )tmp___2);
}
}
static ssize_t input_map_show(struct device *dev , struct device_attribute *attr ,
                              char *buf )
{
  struct solo_dev *solo_dev ;
  struct device const *__mptr ;
  unsigned int val ;
  char *out ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  {
  __mptr = (struct device const *)dev;
  solo_dev = (struct solo_dev *)__mptr + 0xffffffffffffe6e0UL;
  out = buf;
  val = solo_reg_read(solo_dev, 256);
  tmp = sprintf(out, "Channel 0   => Input %d\n", val & 31U);
  out = out + (unsigned long )tmp;
  tmp___0 = sprintf(out, "Channel 1   => Input %d\n", (val >> 5) & 31U);
  out = out + (unsigned long )tmp___0;
  tmp___1 = sprintf(out, "Channel 2   => Input %d\n", (val >> 10) & 31U);
  out = out + (unsigned long )tmp___1;
  tmp___2 = sprintf(out, "Channel 3   => Input %d\n", (val >> 15) & 31U);
  out = out + (unsigned long )tmp___2;
  tmp___3 = sprintf(out, "Channel 4   => Input %d\n", (val >> 20) & 31U);
  out = out + (unsigned long )tmp___3;
  tmp___4 = sprintf(out, "Channel 5   => Input %d\n", (val >> 25) & 31U);
  out = out + (unsigned long )tmp___4;
  val = solo_reg_read(solo_dev, 260);
  tmp___5 = sprintf(out, "Channel 6   => Input %d\n", val & 31U);
  out = out + (unsigned long )tmp___5;
  tmp___6 = sprintf(out, "Channel 7   => Input %d\n", (val >> 5) & 31U);
  out = out + (unsigned long )tmp___6;
  tmp___7 = sprintf(out, "Channel 8   => Input %d\n", (val >> 10) & 31U);
  out = out + (unsigned long )tmp___7;
  tmp___8 = sprintf(out, "Channel 9   => Input %d\n", (val >> 15) & 31U);
  out = out + (unsigned long )tmp___8;
  tmp___9 = sprintf(out, "Channel 10  => Input %d\n", (val >> 20) & 31U);
  out = out + (unsigned long )tmp___9;
  tmp___10 = sprintf(out, "Channel 11  => Input %d\n", (val >> 25) & 31U);
  out = out + (unsigned long )tmp___10;
  val = solo_reg_read(solo_dev, 264);
  tmp___11 = sprintf(out, "Channel 12  => Input %d\n", val & 31U);
  out = out + (unsigned long )tmp___11;
  tmp___12 = sprintf(out, "Channel 13  => Input %d\n", (val >> 5) & 31U);
  out = out + (unsigned long )tmp___12;
  tmp___13 = sprintf(out, "Channel 14  => Input %d\n", (val >> 10) & 31U);
  out = out + (unsigned long )tmp___13;
  tmp___14 = sprintf(out, "Channel 15  => Input %d\n", (val >> 15) & 31U);
  out = out + (unsigned long )tmp___14;
  tmp___15 = sprintf(out, "Spot Output => Input %d\n", (val >> 20) & 31U);
  out = out + (unsigned long )tmp___15;
  return ((long )out - (long )buf);
}
}
static ssize_t p2m_timeout_store(struct device *dev , struct device_attribute *attr ,
                                 char const *buf , size_t count )
{
  struct solo_dev *solo_dev ;
  struct device const *__mptr ;
  unsigned long ms ;
  int ret ;
  int tmp ;
  unsigned long tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  solo_dev = (struct solo_dev *)__mptr + 0xffffffffffffe6e0UL;
  tmp = kstrtoul(buf, 10U, & ms);
  ret = tmp;
  if (ret < 0 || ms > 200UL) {
    return (-22L);
  } else {
  }
  tmp___0 = msecs_to_jiffies((unsigned int const )ms);
  solo_dev->p2m_jiffies = (int )tmp___0;
  return ((ssize_t )count);
}
}
static ssize_t p2m_timeout_show(struct device *dev , struct device_attribute *attr ,
                                char *buf )
{
  struct solo_dev *solo_dev ;
  struct device const *__mptr ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  solo_dev = (struct solo_dev *)__mptr + 0xffffffffffffe6e0UL;
  tmp = jiffies_to_msecs((unsigned long const )solo_dev->p2m_jiffies);
  tmp___0 = sprintf(buf, "%ums\n", tmp);
  return ((ssize_t )tmp___0);
}
}
static ssize_t intervals_show(struct device *dev , struct device_attribute *attr ,
                              char *buf )
{
  struct solo_dev *solo_dev ;
  struct device const *__mptr ;
  char *out ;
  int fps ;
  int i ;
  u32 tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  solo_dev = (struct solo_dev *)__mptr + 0xffffffffffffe6e0UL;
  out = buf;
  fps = (int )solo_dev->fps;
  i = 0;
  goto ldv_35689;
  ldv_35688:
  tmp = solo_reg_read(solo_dev, (i + 304) * 4);
  tmp___0 = sprintf(out, "Channel %d: %d/%d (0x%08x)\n", i, (int )(solo_dev->v4l2_enc[i])->interval,
                    fps, tmp);
  out = out + (unsigned long )tmp___0;
  i = i + 1;
  ldv_35689: ;
  if (solo_dev->nr_chans > i) {
    goto ldv_35688;
  } else {
  }
  return ((long )out - (long )buf);
}
}
static ssize_t sdram_offsets_show(struct device *dev , struct device_attribute *attr ,
                                  char *buf )
{
  struct solo_dev *solo_dev ;
  struct device const *__mptr ;
  char *out ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int _max1 ;
  int _max2 ;
  int _min1 ;
  int _min2 ;
  int tmp___5 ;
  int _max1___0 ;
  int _max2___0 ;
  int _min1___0 ;
  int _max1___1 ;
  int _max2___1 ;
  int _min1___1 ;
  int _min2___0 ;
  int _min2___1 ;
  int _max1___2 ;
  int _max2___2 ;
  int _min1___2 ;
  int _min2___2 ;
  int tmp___6 ;
  {
  __mptr = (struct device const *)dev;
  solo_dev = (struct solo_dev *)__mptr + 0xffffffffffffe6e0UL;
  out = buf;
  tmp = sprintf(out, "DISP: 0x%08x @ 0x%08x\n", 0, 4718592);
  out = out + (unsigned long )tmp;
  tmp___0 = sprintf(out, "EOSD: 0x%08x @ 0x%08x (0x%08x * %d)\n", 4718592, solo_dev->type == 0 ? 2097152 : 4194304,
                    solo_dev->type == 0 ? 65536 : 131072, (solo_dev->type == 0 ? 2097152 : 4194304) / (solo_dev->type == 0 ? 65536 : 131072));
  out = out + (unsigned long )tmp___0;
  tmp___1 = sprintf(out, "MOTI: 0x%08x @ 0x%08x\n", solo_dev->type == 0 ? 6815744 : 8912896,
                    524288);
  out = out + (unsigned long )tmp___1;
  tmp___2 = sprintf(out, "G723: 0x%08x @ 0x%08x\n", solo_dev->type == 0 ? 7340032 : 9437184,
                    65536);
  out = out + (unsigned long )tmp___2;
  tmp___3 = sprintf(out, "CAPT: 0x%08x @ 0x%08x (0x%08x * %d)\n", solo_dev->type == 0 ? 7405568 : 9502720,
                    solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016, 1179648,
                    solo_dev->sdram_size <= 33554432 ? 5 : 17);
  out = out + (unsigned long )tmp___3;
  tmp___4 = sprintf(out, "EREF: 0x%08x @ 0x%08x (0x%08x * %d)\n", (solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016),
                    solo_dev->nr_chans * 2621440, 1310720, (solo_dev->nr_chans * 2621440) / 1310720);
  out = out + (unsigned long )tmp___4;
  _max1 = solo_dev->nr_chans * 524288;
  _min1 = (solo_dev->sdram_size + (solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)))) + solo_dev->nr_chans * -524288;
  _min2 = 16711680;
  _max2 = _min1 < _min2 ? _min1 : _min2;
  tmp___5 = sprintf(out, "MPEG: 0x%08x @ 0x%08x\n", ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)) + solo_dev->nr_chans * 2621440,
                    _max1 > _max2 ? _max1 : _max2);
  out = out + (unsigned long )tmp___5;
  _max1___0 = solo_dev->nr_chans * 524288;
  _max1___1 = solo_dev->nr_chans * 524288;
  _min1___1 = (solo_dev->sdram_size + (solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)))) + solo_dev->nr_chans * -524288;
  _min2___0 = 16711680;
  _max2___1 = _min1___1 < _min2___0 ? _min1___1 : _min2___0;
  _min1___0 = solo_dev->sdram_size + ((solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016))) - (_max1___1 > _max2___1 ? _max1___1 : _max2___1));
  _min2___1 = 16711680;
  _max2___0 = _min1___0 < _min2___1 ? _min1___0 : _min2___1;
  _max1___2 = solo_dev->nr_chans * 524288;
  _min1___2 = (solo_dev->sdram_size + (solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)))) + solo_dev->nr_chans * -524288;
  _min2___2 = 16711680;
  _max2___2 = _min1___2 < _min2___2 ? _min1___2 : _min2___2;
  tmp___6 = sprintf(out, "JPEG: 0x%08x @ 0x%08x\n", (((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)) + solo_dev->nr_chans * 2621440) + (_max1___2 > _max2___2 ? _max1___2 : _max2___2),
                    _max1___0 > _max2___0 ? _max1___0 : _max2___0);
  out = out + (unsigned long )tmp___6;
  return ((long )out - (long )buf);
}
}
static ssize_t sdram_show(struct file *file , struct kobject *kobj , struct bin_attribute *a ,
                          char *buf , loff_t off , size_t count )
{
  struct device *dev ;
  struct kobject const *__mptr ;
  struct solo_dev *solo_dev ;
  struct device const *__mptr___0 ;
  int size ;
  int tmp ;
  {
  __mptr = (struct kobject const *)kobj;
  dev = (struct device *)__mptr + 0xfffffffffffffff0UL;
  __mptr___0 = (struct device const *)dev;
  solo_dev = (struct solo_dev *)__mptr___0 + 0xffffffffffffe6e0UL;
  size = solo_dev->sdram_size;
  if ((loff_t )size <= off) {
    return (0L);
  } else {
  }
  if ((unsigned long long )off + (unsigned long long )count > (unsigned long long )size) {
    count = (size_t )((loff_t )size - off);
  } else {
  }
  tmp = solo_p2m_dma(solo_dev, 0, (void *)buf, (u32 )off, (u32 )count, 0, 0U);
  if (tmp != 0) {
    return (-5L);
  } else {
  }
  return ((ssize_t )count);
}
}
static struct device_attribute const solo_dev_attrs[8U] =
  { {{"eeprom", 416U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
      & eeprom_show, & eeprom_store},
        {{"p2m_timeout", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
      & p2m_timeout_show, & p2m_timeout_store},
        {{"p2m_timeouts", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
      & p2m_timeouts_show, 0},
        {{"sdram_size", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
      & sdram_size_show, 0},
        {{"tw28xx", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
      & tw28xx_show, 0},
        {{"input_map", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
      & input_map_show, 0},
        {{"intervals", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
      & intervals_show, 0},
        {{"sdram_offsets", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
      & sdram_offsets_show, 0}};
static void solo_device_release(struct device *dev )
{
  {
  return;
}
}
static int solo_sysfs_init(struct solo_dev *solo_dev )
{
  struct bin_attribute *sdram_attr ;
  struct device *dev ;
  char const *driver ;
  int i ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct lock_class_key __key ;
  int tmp___2 ;
  {
  sdram_attr = & solo_dev->sdram_attr;
  dev = & solo_dev->dev;
  if (solo_dev->type == 1) {
    driver = "solo6110";
  } else {
    driver = "solo6010";
  }
  dev->release = & solo_device_release;
  dev->parent = & (solo_dev->pdev)->dev;
  tmp = dev_to_node(& (solo_dev->pdev)->dev);
  set_dev_node(dev, tmp);
  dev_set_name(dev, "%s-%d-%d", driver, (int )(solo_dev->vfd)->num, solo_dev->nr_chans);
  tmp___0 = device_register(dev);
  if (tmp___0 != 0) {
    dev->parent = (struct device *)0;
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_35808;
  ldv_35807:
  tmp___1 = device_create_file(dev, (struct device_attribute const *)(& solo_dev_attrs) + (unsigned long )i);
  if (tmp___1 != 0) {
    device_unregister(dev);
    return (-12);
  } else {
  }
  i = i + 1;
  ldv_35808: ;
  if ((unsigned int )i <= 7U) {
    goto ldv_35807;
  } else {
  }
  sdram_attr->attr.key = & __key;
  sdram_attr->attr.name = "sdram";
  sdram_attr->attr.mode = 288U;
  sdram_attr->read = & sdram_show;
  sdram_attr->size = (size_t )solo_dev->sdram_size;
  tmp___2 = device_create_bin_file(dev, (struct bin_attribute const *)sdram_attr);
  if (tmp___2 != 0) {
    device_unregister(dev);
    return (-12);
  } else {
  }
  return (0);
}
}
static int solo_pci_probe(struct pci_dev *pdev , struct pci_device_id const *id )
{
  struct solo_dev *solo_dev ;
  int ret ;
  u8 chip_id ;
  void *tmp ;
  struct lock_class_key __key ;
  unsigned long tmp___0 ;
  void *tmp___1 ;
  u32 tmp___2 ;
  u32 divq ;
  u32 divf ;
  unsigned long __ms ;
  unsigned long tmp___3 ;
  unsigned long tmp___4 ;
  {
  tmp = kzalloc(9032UL, 208U);
  solo_dev = (struct solo_dev *)tmp;
  if ((unsigned long )solo_dev == (unsigned long )((struct solo_dev *)0)) {
    return (-12);
  } else {
  }
  if ((unsigned long )id->driver_data == 0UL) {
    _dev_info((struct device const *)(& pdev->dev), "Probing Softlogic 6010\n");
  } else {
    _dev_info((struct device const *)(& pdev->dev), "Probing Softlogic 6110\n");
  }
  solo_dev->type = (int )id->driver_data;
  solo_dev->pdev = pdev;
  spinlock_check(& solo_dev->reg_io_lock);
  __raw_spin_lock_init(& solo_dev->reg_io_lock.ldv_6347.rlock, "&(&solo_dev->reg_io_lock)->rlock",
                       & __key);
  ret = v4l2_device_register(& pdev->dev, & solo_dev->v4l2_dev);
  if (ret != 0) {
    goto fail_probe;
  } else {
  }
  tmp___0 = msecs_to_jiffies(100U);
  solo_dev->p2m_jiffies = (int )tmp___0;
  ret = pci_enable_device(pdev);
  if (ret != 0) {
    goto fail_probe;
  } else {
  }
  pci_set_master(pdev);
  pci_write_config_byte((struct pci_dev const *)pdev, 64, 0);
  pci_write_config_byte((struct pci_dev const *)pdev, 65, 0);
  ret = pci_request_regions(pdev, "solo6x10");
  if (ret != 0) {
    goto fail_probe;
  } else {
  }
  tmp___1 = pci_ioremap_bar(pdev, 0);
  solo_dev->reg_base = (u8 *)tmp___1;
  if ((unsigned long )solo_dev->reg_base == (unsigned long )((u8 *)0U)) {
    ret = -12;
    goto fail_probe;
  } else {
  }
  tmp___2 = solo_reg_read(solo_dev, 28);
  chip_id = (unsigned int )((u8 )tmp___2) & 7U;
  switch ((int )chip_id) {
  case 7:
  solo_dev->nr_chans = 16;
  solo_dev->nr_ext = 5;
  goto ldv_35821;
  case 6:
  solo_dev->nr_chans = 8;
  solo_dev->nr_ext = 2;
  goto ldv_35821;
  default:
  dev_warn((struct device const *)(& pdev->dev), "Invalid chip_id 0x%02x, assuming 4 ch\n",
           (int )chip_id);
  case 5:
  solo_dev->nr_chans = 4;
  solo_dev->nr_ext = 1;
  }
  ldv_35821:
  solo_irq_off(solo_dev, 4294967295U);
  if (solo_dev->type == 0) {
    solo_dev->clock_mhz = 108U;
    solo_dev->sys_config = (((solo_dev->clock_mhz + 2147483647U) * 2U & 511U) << 5) | 1074151448U;
    solo_reg_write(solo_dev, 0, solo_dev->sys_config);
  } else {
    solo_dev->clock_mhz = 135U;
    if (solo_dev->clock_mhz <= 124U) {
      divq = 3U;
      divf = (solo_dev->clock_mhz * 4U) / 3U - 1U;
    } else {
      divq = 2U;
      divf = (solo_dev->clock_mhz * 2U) / 3U - 1U;
    }
    solo_reg_write(solo_dev, 32, ((divq << 12) | (divf << 4)) | 1310722U);
    solo_dev->sys_config = 1073741824U;
  }
  solo_reg_write(solo_dev, 0, solo_dev->sys_config);
  solo_reg_write(solo_dev, 3040, solo_dev->clock_mhz - 1U);
  if (1) {
    __const_udelay(4295000UL);
  } else {
    __ms = 1UL;
    goto ldv_35829;
    ldv_35828:
    __const_udelay(4295000UL);
    ldv_35829:
    tmp___3 = __ms;
    __ms = __ms - 1UL;
    if (tmp___3 != 0UL) {
      goto ldv_35828;
    } else {
    }
  }
  ret = ldv_request_irq_21(pdev->irq, & solo_isr, 128UL, "solo6x10", (void *)solo_dev);
  if (ret != 0) {
    goto fail_probe;
  } else {
  }
  solo_irq_on(solo_dev, 1024U);
  ret = solo_i2c_init(solo_dev);
  if (ret != 0) {
    goto fail_probe;
  } else {
  }
  solo_reg_write(solo_dev, 4, 421U);
  solo_reg_write(solo_dev, 8, solo_dev->type == 0 ? 256U : 768U);
  if (solo_dev->type != 0) {
    solo_dev->usec_lsb = 63U;
    solo_set_time(solo_dev);
  } else {
  }
  solo_reg_write(solo_dev, 3044, 0U);
  ret = solo_p2m_init(solo_dev);
  if (ret != 0) {
    goto fail_probe;
  } else {
  }
  ret = solo_disp_init(solo_dev);
  if (ret != 0) {
    goto fail_probe;
  } else {
  }
  ret = solo_gpio_init(solo_dev);
  if (ret != 0) {
    goto fail_probe;
  } else {
  }
  ret = solo_tw28_init(solo_dev);
  if (ret != 0) {
    goto fail_probe;
  } else {
  }
  ret = solo_v4l2_init(solo_dev, video_nr);
  if (ret != 0) {
    goto fail_probe;
  } else {
  }
  ret = solo_enc_init(solo_dev);
  if (ret != 0) {
    goto fail_probe;
  } else {
  }
  ret = solo_enc_v4l2_init(solo_dev, video_nr);
  if (ret != 0) {
    goto fail_probe;
  } else {
  }
  ret = solo_g723_init(solo_dev);
  if (ret != 0) {
    goto fail_probe;
  } else {
  }
  ret = solo_sysfs_init(solo_dev);
  if (ret != 0) {
    goto fail_probe;
  } else {
  }
  tmp___4 = msecs_to_jiffies(20U);
  solo_dev->p2m_jiffies = (int )tmp___4;
  return (0);
  fail_probe:
  free_solo_dev(solo_dev);
  return (ret);
}
}
static void solo_pci_remove(struct pci_dev *pdev )
{
  struct v4l2_device *v4l2_dev ;
  void *tmp ;
  struct solo_dev *solo_dev ;
  struct v4l2_device const *__mptr ;
  {
  tmp = pci_get_drvdata(pdev);
  v4l2_dev = (struct v4l2_device *)tmp;
  __mptr = (struct v4l2_device const *)v4l2_dev;
  solo_dev = (struct solo_dev *)__mptr + 0xffffffffffffff88UL;
  free_solo_dev(solo_dev);
  return;
}
}
static struct pci_device_id const solo_id_table[12U] =
  { {37907U, 24592U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {7091U, 17156U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {7091U, 17161U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {7091U, 17168U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {7091U, 19972U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {7091U, 19977U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {7091U, 19984U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {37907U, 24848U, 4294967295U, 4294967295U, 0U, 0U, 1UL},
        {7091U, 21252U, 4294967295U, 4294967295U, 0U, 0U, 1UL},
        {7091U, 21256U, 4294967295U, 4294967295U, 0U, 0U, 1UL},
        {7091U, 21264U, 4294967295U, 4294967295U, 0U, 0U, 1UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__solo_id_table_device_table ;
static struct pci_driver solo_pci_driver =
     {{0, 0}, "solo6x10", (struct pci_device_id const *)(& solo_id_table), & solo_pci_probe,
    & solo_pci_remove, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0,
                                             0, 0, 0, 0, 0}, {{{{{{0U}}, 0U, 0U, 0,
                                                                 {0, {0, 0}, 0, 0,
                                                                  0UL}}}}, {0, 0}}};
static int solo_pci_driver_init(void)
{
  int tmp ;
  {
  tmp = __pci_register_driver(& solo_pci_driver, & __this_module, "solo6x10");
  return (tmp);
}
}
static void solo_pci_driver_exit(void)
{
  {
  pci_unregister_driver(& solo_pci_driver);
  return;
}
}
int ldv_retval_5 ;
int ldv_retval_4 ;
extern void ldv_initialize(void) ;
extern void ldv_check_final_state(void) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& solo_isr)) {
    return (1);
  } else {
  }
  return (0);
}
}
void choose_interrupt_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_0, ldv_irq_line_1_0, ldv_irq_data_1_0);
  goto ldv_35872;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_35872;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_35872;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_35872;
  default:
  ldv_stop();
  }
  ldv_35872: ;
  return;
}
}
void disable_suitable_irq_1(int line , void *data )
{
  {
  if (ldv_irq_1_0 != 0 && line == ldv_irq_line_1_0) {
    ldv_irq_1_0 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_1 != 0 && line == ldv_irq_line_1_1) {
    ldv_irq_1_1 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_2 != 0 && line == ldv_irq_line_1_2) {
    ldv_irq_1_2 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_3 != 0 && line == ldv_irq_line_1_3) {
    ldv_irq_1_3 = 0;
    return;
  } else {
  }
  return;
}
}
int ldv_irq_1(int state , int line , void *data )
{
  irqreturn_t irq_retval ;
  int tmp ;
  {
  if (state != 0) {
    tmp = __VERIFIER_nondet_int();
    switch (tmp) {
    case 0: ;
    if (state == 1) {
      LDV_IN_INTERRUPT = 2;
      irq_retval = solo_isr(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_35888;
    default:
    ldv_stop();
    }
    ldv_35888: ;
  } else {
  }
  return (state);
}
}
void activate_suitable_irq_1(int line , void *data )
{
  {
  if (ldv_irq_1_0 == 0) {
    ldv_irq_line_1_0 = line;
    ldv_irq_data_1_0 = data;
    ldv_irq_1_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_1 == 0) {
    ldv_irq_line_1_1 = line;
    ldv_irq_data_1_1 = data;
    ldv_irq_1_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_2 == 0) {
    ldv_irq_line_1_2 = line;
    ldv_irq_data_1_2 = data;
    ldv_irq_1_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_3 == 0) {
    ldv_irq_line_1_3 = line;
    ldv_irq_data_1_3 = data;
    ldv_irq_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void ldv_initialize_pci_driver_15(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(2976UL);
  solo_pci_driver_group0 = (struct pci_dev *)tmp;
  return;
}
}
void ldv_main_exported_14(void) ;
void ldv_main_exported_8(void) ;
void ldv_main_exported_6(void) ;
void ldv_main_exported_4(void) ;
void ldv_main_exported_7(void) ;
void ldv_main_exported_5(void) ;
void ldv_main_exported_11(void) ;
void ldv_main_exported_13(void) ;
void ldv_main_exported_10(void) ;
void ldv_main_exported_9(void) ;
void ldv_main_exported_12(void) ;
void ldv_main_exported_3(void) ;
void ldv_main_exported_2(void) ;
int main(void)
{
  struct pci_device_id *ldvarg88 ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(32UL);
  ldvarg88 = (struct pci_device_id *)tmp;
  ldv_initialize();
  ldv_state_variable_6 = 0;
  ldv_state_variable_11 = 0;
  ldv_state_variable_3 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_9 = 0;
  ldv_state_variable_12 = 0;
  ldv_state_variable_2 = 0;
  ldv_state_variable_15 = 0;
  ldv_state_variable_14 = 0;
  ldv_state_variable_8 = 0;
  ldv_state_variable_1 = 1;
  ldv_state_variable_4 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_13 = 0;
  ldv_state_variable_10 = 0;
  ldv_state_variable_5 = 0;
  ldv_35960:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    ldv_main_exported_6();
  } else {
  }
  goto ldv_35934;
  case 1: ;
  if (ldv_state_variable_11 != 0) {
    ldv_main_exported_11();
  } else {
  }
  goto ldv_35934;
  case 2: ;
  if (ldv_state_variable_3 != 0) {
    ldv_main_exported_3();
  } else {
  }
  goto ldv_35934;
  case 3: ;
  if (ldv_state_variable_7 != 0) {
    ldv_main_exported_7();
  } else {
  }
  goto ldv_35934;
  case 4: ;
  if (ldv_state_variable_9 != 0) {
    ldv_main_exported_9();
  } else {
  }
  goto ldv_35934;
  case 5: ;
  if (ldv_state_variable_12 != 0) {
    ldv_main_exported_12();
  } else {
  }
  goto ldv_35934;
  case 6: ;
  if (ldv_state_variable_2 != 0) {
    ldv_main_exported_2();
  } else {
  }
  goto ldv_35934;
  case 7: ;
  if (ldv_state_variable_15 != 0) {
    tmp___1 = __VERIFIER_nondet_int();
    switch (tmp___1) {
    case 0: ;
    if (ldv_state_variable_15 == 1) {
      ldv_retval_4 = solo_pci_probe(solo_pci_driver_group0, (struct pci_device_id const *)ldvarg88);
      if (ldv_retval_4 == 0) {
        ldv_state_variable_15 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_35943;
    case 1: ;
    if (ldv_state_variable_15 == 2) {
      solo_pci_remove(solo_pci_driver_group0);
      ldv_state_variable_15 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_35943;
    default:
    ldv_stop();
    }
    ldv_35943: ;
  } else {
  }
  goto ldv_35934;
  case 8: ;
  if (ldv_state_variable_14 != 0) {
    ldv_main_exported_14();
  } else {
  }
  goto ldv_35934;
  case 9: ;
  if (ldv_state_variable_8 != 0) {
    ldv_main_exported_8();
  } else {
  }
  goto ldv_35934;
  case 10: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_35934;
  case 11: ;
  if (ldv_state_variable_4 != 0) {
    ldv_main_exported_4();
  } else {
  }
  goto ldv_35934;
  case 12: ;
  if (ldv_state_variable_0 != 0) {
    tmp___2 = __VERIFIER_nondet_int();
    switch (tmp___2) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      solo_pci_driver_exit();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_35953;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_5 = solo_pci_driver_init();
      if (ldv_retval_5 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_5 == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_5 = 1;
        ldv_state_variable_10 = 1;
        ldv_state_variable_13 = 1;
        ldv_initialize_vb2_ops_13();
        ldv_state_variable_4 = 1;
        ldv_state_variable_8 = 1;
        ldv_initialize_vb2_ops_8();
        ldv_state_variable_14 = 1;
        ldv_initialize_i2c_algorithm_14();
        ldv_state_variable_15 = 1;
        ldv_initialize_pci_driver_15();
        ldv_state_variable_2 = 1;
        ldv_initialize_snd_kcontrol_new_2();
        ldv_state_variable_12 = 1;
        ldv_initialize_v4l2_file_operations_12();
        ldv_state_variable_9 = 1;
        ldv_state_variable_7 = 1;
        ldv_initialize_v4l2_file_operations_7();
        ldv_state_variable_3 = 1;
        ldv_initialize_snd_pcm_ops_3();
        ldv_state_variable_11 = 1;
        ldv_initialize_v4l2_ioctl_ops_11();
        ldv_state_variable_6 = 1;
        ldv_initialize_v4l2_ioctl_ops_6();
      } else {
      }
    } else {
    }
    goto ldv_35953;
    default:
    ldv_stop();
    }
    ldv_35953: ;
  } else {
  }
  goto ldv_35934;
  case 13: ;
  if (ldv_state_variable_13 != 0) {
    ldv_main_exported_13();
  } else {
  }
  goto ldv_35934;
  case 14: ;
  if (ldv_state_variable_10 != 0) {
    ldv_main_exported_10();
  } else {
  }
  goto ldv_35934;
  case 15: ;
  if (ldv_state_variable_5 != 0) {
    ldv_main_exported_5();
  } else {
  }
  goto ldv_35934;
  default:
  ldv_stop();
  }
  ldv_35934: ;
  goto ldv_35960;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irqrestore_8(lock, flags);
  return;
}
}
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return ((void *)0);
}
}
void ldv_free_irq_20(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
__inline static int ldv_request_irq_21(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = reg_check_1(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_1((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
extern int snprintf(char * , size_t , char const * , ...) ;
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  default:
  __bad_percpu_size();
  }
  ldv_3067: ;
  return (pfo_ret__);
}
}
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{
  int tmp ;
  {
  tmp = variable_test_bit((long )flag, (unsigned long const volatile *)(& ti->flags));
  return (tmp);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void prepare_to_wait(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int autoremove_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
void *ldv_kmem_cache_alloc_40(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
extern long schedule_timeout(long ) ;
__inline static int test_tsk_thread_flag(struct task_struct *tsk , int flag )
{
  int tmp ;
  {
  tmp = test_ti_thread_flag((struct thread_info *)tsk->stack, flag);
  return (tmp);
}
}
__inline static int signal_pending(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = test_tsk_thread_flag(p, 2);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  return ((int )tmp___0);
}
}
extern int i2c_transfer(struct i2c_adapter * , struct i2c_msg * , int ) ;
extern int i2c_add_adapter(struct i2c_adapter * ) ;
extern void i2c_del_adapter(struct i2c_adapter * ) ;
__inline static u32 solo_reg_read___0(struct solo_dev *solo_dev , int reg )
{
  unsigned long flags ;
  u32 ret ;
  u16 val ;
  {
  ldv_spin_lock();
  ret = readl((void const volatile *)solo_dev->reg_base + (unsigned long )reg);
  __asm__ volatile ("lfence": : : "memory");
  pci_read_config_word((struct pci_dev const *)solo_dev->pdev, 6, & val);
  __asm__ volatile ("lfence": : : "memory");
  spin_unlock_irqrestore(& solo_dev->reg_io_lock, flags);
  return (ret);
}
}
__inline static void solo_reg_write___0(struct solo_dev *solo_dev , int reg , u32 data )
{
  unsigned long flags ;
  u16 val ;
  {
  ldv_spin_lock();
  writel(data, (void volatile *)solo_dev->reg_base + (unsigned long )reg);
  __asm__ volatile ("sfence": : : "memory");
  pci_read_config_word((struct pci_dev const *)solo_dev->pdev, 6, & val);
  __asm__ volatile ("lfence": : : "memory");
  spin_unlock_irqrestore(& solo_dev->reg_io_lock, flags);
  return;
}
}
__inline static void solo_irq_on___0(struct solo_dev *dev , u32 mask )
{
  {
  dev->irq_mask = dev->irq_mask | mask;
  solo_reg_write___0(dev, 20, dev->irq_mask);
  return;
}
}
__inline static void solo_irq_off___0(struct solo_dev *dev , u32 mask )
{
  {
  dev->irq_mask = dev->irq_mask & ~ mask;
  solo_reg_write___0(dev, 20, dev->irq_mask);
  return;
}
}
u8 solo_i2c_readbyte(struct solo_dev *solo_dev , int id , u8 addr , u8 off ) ;
void solo_i2c_writebyte(struct solo_dev *solo_dev , int id , u8 addr , u8 off , u8 data ) ;
u8 solo_i2c_readbyte(struct solo_dev *solo_dev , int id , u8 addr , u8 off )
{
  struct i2c_msg msgs[2U] ;
  u8 data ;
  {
  msgs[0].flags = 0U;
  msgs[0].addr = (__u16 )addr;
  msgs[0].len = 1U;
  msgs[0].buf = & off;
  msgs[1].flags = 1U;
  msgs[1].addr = (__u16 )addr;
  msgs[1].len = 1U;
  msgs[1].buf = & data;
  i2c_transfer((struct i2c_adapter *)(& solo_dev->i2c_adap) + (unsigned long )id,
               (struct i2c_msg *)(& msgs), 2);
  return (data);
}
}
void solo_i2c_writebyte(struct solo_dev *solo_dev , int id , u8 addr , u8 off , u8 data )
{
  struct i2c_msg msgs ;
  u8 buf[2U] ;
  {
  buf[0] = off;
  buf[1] = data;
  msgs.flags = 0U;
  msgs.addr = (__u16 )addr;
  msgs.len = 2U;
  msgs.buf = (__u8 *)(& buf);
  i2c_transfer((struct i2c_adapter *)(& solo_dev->i2c_adap) + (unsigned long )id,
               & msgs, 1);
  return;
}
}
static void solo_i2c_flush(struct solo_dev *solo_dev , int wr )
{
  u32 ctrl ;
  {
  ctrl = (u32 )(solo_dev->i2c_id << 5);
  if ((unsigned int )solo_dev->i2c_state == 1U) {
    ctrl = ctrl | 8U;
  } else {
  }
  if (wr != 0) {
    ctrl = ctrl | 1U;
  } else {
    ctrl = ctrl | 2U;
    if (((int )(solo_dev->i2c_msg)->flags & 2048) == 0) {
      ctrl = ctrl | 16U;
    } else {
    }
  }
  if (solo_dev->i2c_msg_ptr == (unsigned int )(solo_dev->i2c_msg)->len) {
    ctrl = ctrl | 4U;
  } else {
  }
  solo_reg_write___0(solo_dev, 2852, ctrl);
  return;
}
}
static void solo_i2c_start(struct solo_dev *solo_dev )
{
  u32 addr ;
  {
  addr = (u32 )((int )(solo_dev->i2c_msg)->addr << 1);
  if ((int )(solo_dev->i2c_msg)->flags & 1) {
    addr = addr | 1U;
  } else {
  }
  solo_dev->i2c_state = 1;
  solo_reg_write___0(solo_dev, 2856, addr);
  solo_i2c_flush(solo_dev, 1);
  return;
}
}
static void solo_i2c_stop(struct solo_dev *solo_dev )
{
  {
  solo_irq_off___0(solo_dev, 64U);
  solo_reg_write___0(solo_dev, 2852, 0U);
  solo_dev->i2c_state = 4;
  __wake_up(& solo_dev->i2c_wait, 3U, 1, (void *)0);
  return;
}
}
static int solo_i2c_handle_read(struct solo_dev *solo_dev )
{
  {
  prepare_read: ;
  if (solo_dev->i2c_msg_ptr != (unsigned int )(solo_dev->i2c_msg)->len) {
    solo_i2c_flush(solo_dev, 0);
    return (0);
  } else {
  }
  solo_dev->i2c_msg_ptr = 0U;
  solo_dev->i2c_msg = solo_dev->i2c_msg + 1;
  solo_dev->i2c_msg_num = solo_dev->i2c_msg_num - 1U;
  if (solo_dev->i2c_msg_num == 0U) {
    solo_i2c_stop(solo_dev);
    return (0);
  } else {
  }
  if (((int )(solo_dev->i2c_msg)->flags & 16384) == 0) {
    solo_i2c_start(solo_dev);
  } else
  if ((int )(solo_dev->i2c_msg)->flags & 1) {
    goto prepare_read;
  } else {
    solo_i2c_stop(solo_dev);
  }
  return (0);
}
}
static int solo_i2c_handle_write(struct solo_dev *solo_dev )
{
  {
  retry_write: ;
  if (solo_dev->i2c_msg_ptr != (unsigned int )(solo_dev->i2c_msg)->len) {
    solo_reg_write___0(solo_dev, 2856, (u32 )*((solo_dev->i2c_msg)->buf + (unsigned long )solo_dev->i2c_msg_ptr));
    solo_dev->i2c_msg_ptr = solo_dev->i2c_msg_ptr + 1U;
    solo_i2c_flush(solo_dev, 1);
    return (0);
  } else {
  }
  solo_dev->i2c_msg_ptr = 0U;
  solo_dev->i2c_msg = solo_dev->i2c_msg + 1;
  solo_dev->i2c_msg_num = solo_dev->i2c_msg_num - 1U;
  if (solo_dev->i2c_msg_num == 0U) {
    solo_i2c_stop(solo_dev);
    return (0);
  } else {
  }
  if (((int )(solo_dev->i2c_msg)->flags & 16384) == 0) {
    solo_i2c_start(solo_dev);
  } else
  if ((int )(solo_dev->i2c_msg)->flags & 1) {
    solo_i2c_stop(solo_dev);
  } else {
    goto retry_write;
  }
  return (0);
}
}
int solo_i2c_isr(struct solo_dev *solo_dev )
{
  u32 status ;
  u32 tmp ;
  int ret ;
  u32 tmp___0 ;
  {
  tmp = solo_reg_read___0(solo_dev, 2852);
  status = tmp;
  ret = -22;
  if ((status & 196608U) == 196608U || solo_dev->i2c_id < 0) {
    solo_i2c_stop(solo_dev);
    return (-6);
  } else {
  }
  switch ((unsigned int )solo_dev->i2c_state) {
  case 1U: ;
  if ((int )(solo_dev->i2c_msg)->flags & 1) {
    solo_dev->i2c_state = 2;
    ret = solo_i2c_handle_read(solo_dev);
    goto ldv_34006;
  } else {
  }
  solo_dev->i2c_state = 3;
  case 3U:
  ret = solo_i2c_handle_write(solo_dev);
  goto ldv_34006;
  case 2U:
  tmp___0 = solo_reg_read___0(solo_dev, 2860);
  *((solo_dev->i2c_msg)->buf + (unsigned long )solo_dev->i2c_msg_ptr) = (__u8 )tmp___0;
  solo_dev->i2c_msg_ptr = solo_dev->i2c_msg_ptr + 1U;
  ret = solo_i2c_handle_read(solo_dev);
  goto ldv_34006;
  default:
  solo_i2c_stop(solo_dev);
  }
  ldv_34006: ;
  return (ret);
}
}
static int solo_i2c_master_xfer(struct i2c_adapter *adap , struct i2c_msg *msgs ,
                                int num )
{
  struct solo_dev *solo_dev ;
  unsigned long timeout ;
  int ret ;
  int i ;
  wait_queue_t wait ;
  struct task_struct *tmp ;
  long tmp___0 ;
  struct task_struct *tmp___1 ;
  int tmp___2 ;
  {
  solo_dev = (struct solo_dev *)adap->algo_data;
  tmp = get_current();
  wait.flags = 0U;
  wait.private = (void *)tmp;
  wait.func = & autoremove_wake_function;
  wait.task_list.next = & wait.task_list;
  wait.task_list.prev = & wait.task_list;
  i = 0;
  goto ldv_34022;
  ldv_34021: ;
  if ((unsigned long )((struct i2c_adapter *)(& solo_dev->i2c_adap) + (unsigned long )i) == (unsigned long )adap) {
    goto ldv_34020;
  } else {
  }
  i = i + 1;
  ldv_34022: ;
  if (i <= 1) {
    goto ldv_34021;
  } else {
  }
  ldv_34020: ;
  if (i == 2) {
    return (num);
  } else {
  }
  mutex_lock_nested(& solo_dev->i2c_mutex, 0U);
  solo_dev->i2c_id = i;
  solo_dev->i2c_msg = msgs;
  solo_dev->i2c_msg_num = (unsigned int )num;
  solo_dev->i2c_msg_ptr = 0U;
  solo_reg_write___0(solo_dev, 2852, 0U);
  solo_irq_on___0(solo_dev, 64U);
  solo_i2c_start(solo_dev);
  timeout = 125UL;
  ldv_34024:
  prepare_to_wait(& solo_dev->i2c_wait, & wait, 1);
  if ((unsigned int )solo_dev->i2c_state == 4U) {
    goto ldv_34023;
  } else {
  }
  tmp___0 = schedule_timeout((long )timeout);
  timeout = (unsigned long )tmp___0;
  if (timeout == 0UL) {
    goto ldv_34023;
  } else {
  }
  tmp___1 = get_current();
  tmp___2 = signal_pending(tmp___1);
  if (tmp___2 != 0) {
    goto ldv_34023;
  } else {
  }
  goto ldv_34024;
  ldv_34023:
  finish_wait(& solo_dev->i2c_wait, & wait);
  ret = (int )((unsigned int )num - solo_dev->i2c_msg_num);
  solo_dev->i2c_state = 0;
  solo_dev->i2c_id = -1;
  mutex_unlock(& solo_dev->i2c_mutex);
  return (ret);
}
}
static u32 solo_i2c_functionality(struct i2c_adapter *adap )
{
  {
  return (1U);
}
}
static struct i2c_algorithm const solo_i2c_algo = {& solo_i2c_master_xfer, 0, & solo_i2c_functionality};
int solo_i2c_init(struct solo_dev *solo_dev )
{
  int i ;
  int ret ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct i2c_adapter *adap ;
  {
  solo_reg_write___0(solo_dev, 2848, 264U);
  solo_dev->i2c_id = -1;
  solo_dev->i2c_state = 0;
  __init_waitqueue_head(& solo_dev->i2c_wait, "&solo_dev->i2c_wait", & __key);
  __mutex_init(& solo_dev->i2c_mutex, "&solo_dev->i2c_mutex", & __key___0);
  i = 0;
  goto ldv_34039;
  ldv_34038:
  adap = (struct i2c_adapter *)(& solo_dev->i2c_adap) + (unsigned long )i;
  snprintf((char *)(& adap->name), 20UL, "%s I2C %d", (char *)"solo6x10", i);
  adap->algo = & solo_i2c_algo;
  adap->algo_data = (void *)solo_dev;
  adap->retries = 1;
  adap->dev.parent = & (solo_dev->pdev)->dev;
  ret = i2c_add_adapter(adap);
  if (ret != 0) {
    adap->algo_data = (void *)0;
    goto ldv_34037;
  } else {
  }
  i = i + 1;
  ldv_34039: ;
  if (i <= 1) {
    goto ldv_34038;
  } else {
  }
  ldv_34037: ;
  if (ret != 0) {
    i = 0;
    goto ldv_34042;
    ldv_34041: ;
    if ((unsigned long )solo_dev->i2c_adap[i].algo_data == (unsigned long )((void *)0)) {
      goto ldv_34040;
    } else {
    }
    i2c_del_adapter((struct i2c_adapter *)(& solo_dev->i2c_adap) + (unsigned long )i);
    solo_dev->i2c_adap[i].algo_data = (void *)0;
    i = i + 1;
    ldv_34042: ;
    if (i <= 1) {
      goto ldv_34041;
    } else {
    }
    ldv_34040: ;
    return (ret);
  } else {
  }
  return (0);
}
}
void solo_i2c_exit(struct solo_dev *solo_dev )
{
  int i ;
  {
  i = 0;
  goto ldv_34049;
  ldv_34048: ;
  if ((unsigned long )solo_dev->i2c_adap[i].algo_data == (unsigned long )((void *)0)) {
    goto ldv_34047;
  } else {
  }
  i2c_del_adapter((struct i2c_adapter *)(& solo_dev->i2c_adap) + (unsigned long )i);
  solo_dev->i2c_adap[i].algo_data = (void *)0;
  ldv_34047:
  i = i + 1;
  ldv_34049: ;
  if (i <= 1) {
    goto ldv_34048;
  } else {
  }
  return;
}
}
void ldv_initialize_i2c_algorithm_14(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(1936UL);
  solo_i2c_algo_group0 = (struct i2c_adapter *)tmp;
  return;
}
}
void ldv_main_exported_14(void)
{
  struct i2c_msg *ldvarg90 ;
  void *tmp ;
  int ldvarg89 ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_zalloc(16UL);
  ldvarg90 = (struct i2c_msg *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  ldvarg89 = tmp___0;
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_14 == 1) {
    solo_i2c_master_xfer(solo_i2c_algo_group0, ldvarg90, ldvarg89);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_34060;
  case 1: ;
  if (ldv_state_variable_14 == 1) {
    solo_i2c_functionality(solo_i2c_algo_group0);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_34060;
  default:
  ldv_stop();
  }
  ldv_34060: ;
  return;
}
}
void *ldv_kmem_cache_alloc_40(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
__inline static int fls64(__u64 x )
{
  int bitpos ;
  {
  bitpos = -1;
  __asm__ ("bsrq %1,%q0": "+r" (bitpos): "rm" (x));
  return (bitpos + 1);
}
}
extern void warn_slowpath_null(char const * , int const ) ;
extern unsigned long __phys_addr(unsigned long ) ;
__inline static int __get_order(unsigned long size )
{
  int order ;
  {
  size = size - 1UL;
  size = size >> 12;
  order = fls64((__u64 )size);
  return (order);
}
}
extern void *memset(void * , int , size_t ) ;
extern void __xadd_wrong_size(void) ;
__inline static int atomic_add_return(int i , atomic_t *v )
{
  int __ret ;
  {
  __ret = i;
  switch (4UL) {
  case 1UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddb %b0, %1\n": "+q" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5626;
  case 2UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddw %w0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5626;
  case 4UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddl %0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5626;
  case 8UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddq %q0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5626;
  default:
  __xadd_wrong_size();
  }
  ldv_5626: ;
  return (__ret + i);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern int mutex_lock_interruptible_nested(struct mutex * , unsigned int ) ;
__inline static void init_completion(struct completion *x )
{
  struct lock_class_key __key ;
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  return;
}
}
__inline static void reinit_completion(struct completion *x )
{
  {
  x->done = 0U;
  return;
}
}
extern unsigned long wait_for_completion_timeout(struct completion * , unsigned long ) ;
extern void complete(struct completion * ) ;
extern unsigned long __get_free_pages(gfp_t , unsigned int ) ;
unsigned long ldv___get_free_pages_64(gfp_t flags , unsigned int ldv_func_arg2 ) ;
unsigned long ldv___get_free_pages_65(gfp_t flags , unsigned int ldv_func_arg2 ) ;
extern void free_pages(unsigned long , unsigned int ) ;
void *ldv_kmem_cache_alloc_60(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
extern int dev_err(struct device const * , char const * , ...) ;
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((dma_direction == 0 || dma_direction == 1) || dma_direction == 2);
}
}
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
extern struct dma_map_ops *dma_ops ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct device *)0),
                         0L);
  if (tmp != 0L || (unsigned long )dev->archdata.dma_ops == (unsigned long )((struct dma_map_ops *)0)) {
    return (dma_ops);
  } else {
    return (dev->archdata.dma_ops);
  }
}
}
__inline static dma_addr_t dma_map_single_attrs(struct device *dev , void *ptr , size_t size ,
                                                enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  int tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  kmemcheck_mark_initialized(ptr, (unsigned int )size);
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (19), "i" (12UL));
    ldv_22383: ;
    goto ldv_22383;
  } else {
  }
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, (struct page *)-24189255811072L + (tmp___2 >> 12),
                            (unsigned long )ptr & 4095UL, size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, (struct page *)-24189255811072L + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
                     size, (int )dir, addr, 1);
  return (addr);
}
}
__inline static void dma_unmap_single_attrs(struct device *dev , dma_addr_t addr ,
                                            size_t size , enum dma_data_direction dir ,
                                            struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (36), "i" (12UL));
    ldv_22392: ;
    goto ldv_22392;
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    (*(ops->unmap_page))(dev, addr, size, dir, attrs);
  } else {
  }
  debug_dma_unmap_page(dev, addr, size, (int )dir, 1);
  return;
}
}
__inline static int dma_mapping_error(struct device *dev , dma_addr_t dma_addr )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  debug_dma_mapping_error(dev, dma_addr);
  if ((unsigned long )ops->mapping_error != (unsigned long )((int (*)(struct device * ,
                                                                      dma_addr_t ))0)) {
    tmp___0 = (*(ops->mapping_error))(dev, dma_addr);
    return (tmp___0);
  } else {
  }
  return (dma_addr == 0ULL);
}
}
__inline static dma_addr_t pci_map_single(struct pci_dev *hwdev , void *ptr , size_t size ,
                                          int direction )
{
  dma_addr_t tmp ;
  {
  tmp = dma_map_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                             ptr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  return (tmp);
}
}
__inline static void pci_unmap_single(struct pci_dev *hwdev , dma_addr_t dma_addr ,
                                      size_t size , int direction )
{
  {
  dma_unmap_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                         dma_addr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  return;
}
}
__inline static int pci_dma_mapping_error(struct pci_dev *pdev , dma_addr_t dma_addr )
{
  int tmp ;
  {
  tmp = dma_mapping_error(& pdev->dev, dma_addr);
  return (tmp);
}
}
__inline static u32 solo_reg_read___1(struct solo_dev *solo_dev , int reg )
{
  unsigned long flags ;
  u32 ret ;
  u16 val ;
  {
  ldv_spin_lock();
  ret = readl((void const volatile *)solo_dev->reg_base + (unsigned long )reg);
  __asm__ volatile ("lfence": : : "memory");
  pci_read_config_word((struct pci_dev const *)solo_dev->pdev, 6, & val);
  __asm__ volatile ("lfence": : : "memory");
  spin_unlock_irqrestore(& solo_dev->reg_io_lock, flags);
  return (ret);
}
}
__inline static void solo_reg_write___1(struct solo_dev *solo_dev , int reg , u32 data )
{
  unsigned long flags ;
  u16 val ;
  {
  ldv_spin_lock();
  writel(data, (void volatile *)solo_dev->reg_base + (unsigned long )reg);
  __asm__ volatile ("sfence": : : "memory");
  pci_read_config_word((struct pci_dev const *)solo_dev->pdev, 6, & val);
  __asm__ volatile ("lfence": : : "memory");
  spin_unlock_irqrestore(& solo_dev->reg_io_lock, flags);
  return;
}
}
__inline static void solo_irq_on___1(struct solo_dev *dev , u32 mask )
{
  {
  dev->irq_mask = dev->irq_mask | mask;
  solo_reg_write___1(dev, 20, dev->irq_mask);
  return;
}
}
__inline static void solo_irq_off___1(struct solo_dev *dev , u32 mask )
{
  {
  dev->irq_mask = dev->irq_mask & ~ mask;
  solo_reg_write___1(dev, 20, dev->irq_mask);
  return;
}
}
int solo_p2m_dma_t(struct solo_dev *solo_dev , int wr , dma_addr_t dma_addr , u32 ext_addr ,
                   u32 size , int repeat , u32 ext_size ) ;
void solo_p2m_fill_desc(struct solo_p2m_desc *desc , int wr , dma_addr_t dma_addr ,
                        u32 ext_addr , u32 size , int repeat , u32 ext_size ) ;
int solo_p2m_dma_desc(struct solo_dev *solo_dev , struct solo_p2m_desc *desc , dma_addr_t desc_dma ,
                      int desc_cnt ) ;
static int multi_p2m ;
static int desc_mode ;
int solo_p2m_dma(struct solo_dev *solo_dev , int wr , void *sys_addr , u32 ext_addr ,
                 u32 size , int repeat , u32 ext_size )
{
  dma_addr_t dma_addr ;
  int ret ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  bool __warned___0 ;
  int __ret_warn_once___0 ;
  int __ret_warn_on___0 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  {
  __ret_warn_once = ((unsigned long )sys_addr & 3UL) != 0UL;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5994/dscv_tempdir/dscv/ri/43_2a/drivers/staging/media/solo6x10/solo6x10-p2m.o.c.prepared",
                         133);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    return (-22);
  } else {
  }
  __ret_warn_once___0 = size == 0U;
  tmp___5 = ldv__builtin_expect(__ret_warn_once___0 != 0, 0L);
  if (tmp___5 != 0L) {
    __ret_warn_on___0 = ! __warned___0;
    tmp___3 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___3 != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5994/dscv_tempdir/dscv/ri/43_2a/drivers/staging/media/solo6x10/solo6x10-p2m.o.c.prepared",
                         135);
    } else {
    }
    tmp___4 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___4 != 0L) {
      __warned___0 = 1;
    } else {
    }
  } else {
  }
  tmp___6 = ldv__builtin_expect(__ret_warn_once___0 != 0, 0L);
  if (tmp___6 != 0L) {
    return (-22);
  } else {
  }
  dma_addr = pci_map_single(solo_dev->pdev, sys_addr, (size_t )size, wr != 0 ? 1 : 2);
  tmp___7 = pci_dma_mapping_error(solo_dev->pdev, dma_addr);
  if (tmp___7 != 0) {
    return (-12);
  } else {
  }
  ret = solo_p2m_dma_t(solo_dev, wr, dma_addr, ext_addr, size, repeat, ext_size);
  pci_unmap_single(solo_dev->pdev, dma_addr, (size_t )size, wr != 0 ? 1 : 2);
  return (ret);
}
}
int solo_p2m_dma_desc(struct solo_dev *solo_dev , struct solo_p2m_desc *desc , dma_addr_t desc_dma ,
                      int desc_cnt )
{
  struct solo_p2m_dev *p2m_dev ;
  unsigned int timeout ;
  unsigned int config ;
  int ret ;
  int p2m_id ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  unsigned long tmp___2 ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  config = 0U;
  ret = 0;
  p2m_id = 0;
  if (solo_dev->type != 1 && multi_p2m != 0) {
    tmp = atomic_add_return(1, & solo_dev->p2m_count);
    p2m_id = tmp % 4;
    if (p2m_id < 0) {
      p2m_id = - p2m_id;
    } else {
    }
  } else {
  }
  p2m_dev = (struct solo_p2m_dev *)(& solo_dev->p2m_dev) + (unsigned long )p2m_id;
  tmp___0 = mutex_lock_interruptible_nested(& p2m_dev->mutex, 0U);
  if (tmp___0 != 0) {
    return (-4);
  } else {
  }
  reinit_completion(& p2m_dev->completion);
  p2m_dev->error = 0;
  if ((desc_cnt > 1 && solo_dev->type != 1) && desc_mode != 0) {
    tmp___1 = 0;
    p2m_dev->desc_idx = tmp___1;
    p2m_dev->desc_count = tmp___1;
    config = solo_reg_read___1(solo_dev, (p2m_id + 4) * 32);
    solo_reg_write___1(solo_dev, p2m_id * 32 + 132, (u32 )desc_dma);
    solo_reg_write___1(solo_dev, p2m_id * 32 + 136, (u32 )desc_cnt);
    solo_reg_write___1(solo_dev, (p2m_id + 4) * 32, config | 1U);
  } else {
    p2m_dev->desc_count = desc_cnt;
    p2m_dev->desc_idx = 1;
    p2m_dev->descs = desc;
    solo_reg_write___1(solo_dev, p2m_id * 32 + 152, (desc + 1UL)->dma_addr);
    solo_reg_write___1(solo_dev, p2m_id * 32 + 156, (desc + 1UL)->ext_addr);
    solo_reg_write___1(solo_dev, p2m_id * 32 + 148, (desc + 1UL)->cfg);
    solo_reg_write___1(solo_dev, p2m_id * 32 + 144, (desc + 1UL)->ctrl);
  }
  tmp___2 = wait_for_completion_timeout(& p2m_dev->completion, (unsigned long )solo_dev->p2m_jiffies);
  timeout = (unsigned int )tmp___2;
  __ret_warn_once = p2m_dev->error != 0;
  tmp___5 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___5 != 0L) {
    __ret_warn_on = ! __warned;
    tmp___3 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___3 != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5994/dscv_tempdir/dscv/ri/43_2a/drivers/staging/media/solo6x10/solo6x10-p2m.o.c.prepared",
                         206);
    } else {
    }
    tmp___4 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___4 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  tmp___6 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___6 != 0L) {
    ret = -5;
  } else
  if (timeout == 0U) {
    solo_dev->p2m_timeouts = solo_dev->p2m_timeouts + 1U;
    ret = -11;
  } else {
  }
  solo_reg_write___1(solo_dev, p2m_id * 32 + 144, 0U);
  if ((desc_cnt > 1 && solo_dev->type != 1) && config != 0U) {
    solo_reg_write___1(solo_dev, (p2m_id + 4) * 32, config);
  } else {
  }
  mutex_unlock(& p2m_dev->mutex);
  return (ret);
}
}
void solo_p2m_fill_desc(struct solo_p2m_desc *desc , int wr , dma_addr_t dma_addr ,
                        u32 ext_addr , u32 size , int repeat , u32 ext_size )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  bool __warned___0 ;
  int __ret_warn_once___0 ;
  int __ret_warn_on___0 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  {
  __ret_warn_once = (dma_addr & 3ULL) != 0ULL;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5994/dscv_tempdir/dscv/ri/43_2a/drivers/staging/media/solo6x10/solo6x10-p2m.o.c.prepared",
                         229);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  __ret_warn_once___0 = size == 0U;
  tmp___4 = ldv__builtin_expect(__ret_warn_once___0 != 0, 0L);
  if (tmp___4 != 0L) {
    __ret_warn_on___0 = ! __warned___0;
    tmp___2 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___2 != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5994/dscv_tempdir/dscv/ri/43_2a/drivers/staging/media/solo6x10/solo6x10-p2m.o.c.prepared",
                         230);
    } else {
    }
    tmp___3 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___3 != 0L) {
      __warned___0 = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once___0 != 0, 0L);
  desc->cfg = size >> 2;
  desc->ctrl = wr != 0 ? 131U : 129U;
  if (repeat != 0) {
    desc->cfg = desc->cfg | ((ext_size >> 2) << 20);
    desc->ctrl = desc->ctrl | (((size >> 2) << 20) | (u32 )(repeat << 10));
  } else {
  }
  desc->dma_addr = (u32 )dma_addr;
  desc->ext_addr = ext_addr;
  return;
}
}
int solo_p2m_dma_t(struct solo_dev *solo_dev , int wr , dma_addr_t dma_addr , u32 ext_addr ,
                   u32 size , int repeat , u32 ext_size )
{
  struct solo_p2m_desc desc[2U] ;
  int tmp ;
  {
  solo_p2m_fill_desc((struct solo_p2m_desc *)(& desc) + 1UL, wr, dma_addr, ext_addr,
                     size, repeat, ext_size);
  tmp = solo_p2m_dma_desc(solo_dev, (struct solo_p2m_desc *)(& desc), 0ULL, 1);
  return (tmp);
}
}
void solo_p2m_isr(struct solo_dev *solo_dev , int id )
{
  struct solo_p2m_dev *p2m_dev ;
  struct solo_p2m_desc *desc ;
  {
  p2m_dev = (struct solo_p2m_dev *)(& solo_dev->p2m_dev) + (unsigned long )id;
  if (p2m_dev->desc_count <= p2m_dev->desc_idx) {
    complete(& p2m_dev->completion);
    return;
  } else {
  }
  p2m_dev->desc_idx = p2m_dev->desc_idx + 1;
  desc = p2m_dev->descs + (unsigned long )p2m_dev->desc_idx;
  solo_reg_write___1(solo_dev, id * 32 + 144, 0U);
  solo_reg_write___1(solo_dev, id * 32 + 152, desc->dma_addr);
  solo_reg_write___1(solo_dev, id * 32 + 156, desc->ext_addr);
  solo_reg_write___1(solo_dev, id * 32 + 148, desc->cfg);
  solo_reg_write___1(solo_dev, id * 32 + 144, desc->ctrl);
  return;
}
}
void solo_p2m_error_isr(struct solo_dev *solo_dev )
{
  unsigned int err ;
  u32 tmp ;
  struct solo_p2m_dev *p2m_dev ;
  int i ;
  {
  tmp = solo_reg_read___1(solo_dev, 112);
  err = tmp;
  if ((err & 80U) == 0U) {
    return;
  } else {
  }
  i = 0;
  goto ldv_34086;
  ldv_34085:
  p2m_dev = (struct solo_p2m_dev *)(& solo_dev->p2m_dev) + (unsigned long )i;
  p2m_dev->error = 1;
  solo_reg_write___1(solo_dev, i * 32 + 144, 0U);
  complete(& p2m_dev->completion);
  i = i + 1;
  ldv_34086: ;
  if (i <= 3) {
    goto ldv_34085;
  } else {
  }
  return;
}
}
void solo_p2m_exit(struct solo_dev *solo_dev )
{
  int i ;
  {
  i = 0;
  goto ldv_34093;
  ldv_34092:
  solo_irq_off___1(solo_dev, (u32 )(1 << (i + 17)));
  i = i + 1;
  ldv_34093: ;
  if (i <= 3) {
    goto ldv_34092;
  } else {
  }
  return;
}
}
static int solo_p2m_test(struct solo_dev *solo_dev , int base , int size )
{
  u32 *wr_buf ;
  u32 *rd_buf ;
  int i ;
  int ret ;
  int order ;
  int tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  ret = -5;
  tmp = __get_order((unsigned long )size);
  order = tmp;
  tmp___0 = ldv___get_free_pages_64(208U, (unsigned int )order);
  wr_buf = (u32 *)tmp___0;
  if ((unsigned long )wr_buf == (unsigned long )((u32 *)0U)) {
    return (-1);
  } else {
  }
  tmp___1 = ldv___get_free_pages_65(208U, (unsigned int )order);
  rd_buf = (u32 *)tmp___1;
  if ((unsigned long )rd_buf == (unsigned long )((u32 *)0U)) {
    free_pages((unsigned long )wr_buf, (unsigned int )order);
    return (-1);
  } else {
  }
  i = 0;
  goto ldv_34106;
  ldv_34105:
  *(wr_buf + (unsigned long )i) = (u32 )((i << 16) | (i + 1));
  i = i + 1;
  ldv_34106: ;
  if (size >> 3 > i) {
    goto ldv_34105;
  } else {
  }
  i = size >> 3;
  goto ldv_34109;
  ldv_34108:
  *(wr_buf + (unsigned long )i) = (u32 )(~ ((i << 16) | (i + 1)));
  i = i + 1;
  ldv_34109: ;
  if (size >> 2 > i) {
    goto ldv_34108;
  } else {
  }
  memset((void *)rd_buf, 85, (size_t )size);
  tmp___2 = solo_p2m_dma(solo_dev, 1, (void *)wr_buf, (u32 )base, (u32 )size, 0, 0U);
  if (tmp___2 != 0) {
    goto test_fail;
  } else {
  }
  tmp___3 = solo_p2m_dma(solo_dev, 0, (void *)rd_buf, (u32 )base, (u32 )size, 0, 0U);
  if (tmp___3 != 0) {
    goto test_fail;
  } else {
  }
  i = 0;
  goto ldv_34113;
  ldv_34112: ;
  if (*(wr_buf + (unsigned long )i) != *(rd_buf + (unsigned long )i)) {
    goto test_fail;
  } else {
  }
  i = i + 1;
  ldv_34113: ;
  if (size >> 2 > i) {
    goto ldv_34112;
  } else {
  }
  ret = 0;
  test_fail:
  free_pages((unsigned long )wr_buf, (unsigned int )order);
  free_pages((unsigned long )rd_buf, (unsigned int )order);
  return (ret);
}
}
int solo_p2m_init(struct solo_dev *solo_dev )
{
  struct solo_p2m_dev *p2m_dev ;
  int i ;
  struct lock_class_key __key ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int _max1 ;
  int _max2 ;
  int _min1 ;
  int _min2 ;
  int _max1___0 ;
  int _max2___0 ;
  int _min1___0 ;
  int _max1___1 ;
  int _max2___1 ;
  int _min1___1 ;
  int _min2___0 ;
  int _min2___1 ;
  int _max1___2 ;
  int _max2___2 ;
  int _min1___2 ;
  int _min2___2 ;
  int _max1___3 ;
  int _max2___3 ;
  int _min1___3 ;
  int _max1___4 ;
  int _max2___4 ;
  int _min1___4 ;
  int _min2___3 ;
  int _min2___4 ;
  {
  i = 0;
  goto ldv_34122;
  ldv_34121:
  p2m_dev = (struct solo_p2m_dev *)(& solo_dev->p2m_dev) + (unsigned long )i;
  __mutex_init(& p2m_dev->mutex, "&p2m_dev->mutex", & __key);
  init_completion(& p2m_dev->completion);
  solo_reg_write___1(solo_dev, i * 32 + 144, 0U);
  solo_reg_write___1(solo_dev, (i + 4) * 32, 22U);
  solo_irq_on___1(solo_dev, (u32 )(1 << (i + 17)));
  i = i + 1;
  ldv_34122: ;
  if (i <= 3) {
    goto ldv_34121;
  } else {
  }
  solo_dev->sdram_size = 0;
  i = 2;
  goto ldv_34131;
  ldv_34130:
  solo_reg_write___1(solo_dev, 4, (u32 )((i << 6) | 293));
  solo_reg_write___1(solo_dev, 0, solo_dev->sys_config | 2147483648U);
  solo_reg_write___1(solo_dev, 0, solo_dev->sys_config);
  switch (i) {
  case 2:
  tmp = solo_p2m_test(solo_dev, 134152192, 65536);
  if (tmp != 0) {
    goto ldv_34125;
  } else {
    tmp___0 = solo_p2m_test(solo_dev, 100597760, 65536);
    if (tmp___0 != 0) {
      goto ldv_34125;
    } else {
    }
  }
  goto ldv_34126;
  case 1:
  tmp___1 = solo_p2m_test(solo_dev, 67043328, 65536);
  if (tmp___1 != 0) {
    goto ldv_34125;
  } else {
  }
  goto ldv_34126;
  default:
  tmp___2 = solo_p2m_test(solo_dev, 33488896, 65536);
  if (tmp___2 != 0) {
    goto ldv_34125;
  } else {
  }
  }
  ldv_34126:
  solo_dev->sdram_size = 33554432 << i;
  goto ldv_34129;
  ldv_34125:
  i = i - 1;
  ldv_34131: ;
  if (i >= 0) {
    goto ldv_34130;
  } else {
  }
  ldv_34129: ;
  if (solo_dev->sdram_size == 0) {
    dev_err((struct device const *)(& (solo_dev->pdev)->dev), "Error detecting SDRAM size\n");
    return (-5);
  } else {
  }
  _max1___2 = solo_dev->nr_chans * 524288;
  _min1___2 = (solo_dev->sdram_size + (solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)))) + solo_dev->nr_chans * -524288;
  _min2___2 = 16711680;
  _max2___2 = _min1___2 < _min2___2 ? _min1___2 : _min2___2;
  _max1___3 = solo_dev->nr_chans * 524288;
  _max1___4 = solo_dev->nr_chans * 524288;
  _min1___4 = (solo_dev->sdram_size + (solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)))) + solo_dev->nr_chans * -524288;
  _min2___3 = 16711680;
  _max2___4 = _min1___4 < _min2___3 ? _min1___4 : _min2___3;
  _min1___3 = solo_dev->sdram_size + ((solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016))) - (_max1___4 > _max2___4 ? _max1___4 : _max2___4));
  _min2___4 = 16711680;
  _max2___3 = _min1___3 < _min2___4 ? _min1___3 : _min2___4;
  if (((((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)) + solo_dev->nr_chans * 2621440) + (_max1___2 > _max2___2 ? _max1___2 : _max2___2)) + (_max1___3 > _max2___3 ? _max1___3 : _max2___3) > solo_dev->sdram_size) {
    _max1 = solo_dev->nr_chans * 524288;
    _min1 = (solo_dev->sdram_size + (solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)))) + solo_dev->nr_chans * -524288;
    _min2 = 16711680;
    _max2 = _min1 < _min2 ? _min1 : _min2;
    _max1___0 = solo_dev->nr_chans * 524288;
    _max1___1 = solo_dev->nr_chans * 524288;
    _min1___1 = (solo_dev->sdram_size + (solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)))) + solo_dev->nr_chans * -524288;
    _min2___0 = 16711680;
    _max2___1 = _min1___1 < _min2___0 ? _min1___1 : _min2___0;
    _min1___0 = solo_dev->sdram_size + ((solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016))) - (_max1___1 > _max2___1 ? _max1___1 : _max2___1));
    _min2___1 = 16711680;
    _max2___0 = _min1___0 < _min2___1 ? _min1___0 : _min2___1;
    dev_err((struct device const *)(& (solo_dev->pdev)->dev), "SDRAM is not large enough (%u < %u)\n",
            solo_dev->sdram_size, ((((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)) + solo_dev->nr_chans * 2621440) + (_max1 > _max2 ? _max1 : _max2)) + (_max1___0 > _max2___0 ? _max1___0 : _max2___0));
    return (-5);
  } else {
  }
  return (0);
}
}
void *ldv_kmem_cache_alloc_60(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
unsigned long ldv___get_free_pages_64(gfp_t flags , unsigned int ldv_func_arg2 )
{
  unsigned long tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __get_free_pages(flags, ldv_func_arg2);
  return (tmp);
}
}
unsigned long ldv___get_free_pages_65(gfp_t flags , unsigned int ldv_func_arg2 )
{
  unsigned long tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = __get_free_pages(flags, ldv_func_arg2);
  return (tmp);
}
}
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
extern void __might_sleep(char const * , int , int ) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
}
}
extern void list_del(struct list_head * ) ;
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern char *strcpy(char * , char const * ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
__inline static long PTR_ERR(void const *ptr )
{
  {
  return ((long )ptr);
}
}
__inline static bool IS_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  return (tmp != 0L);
}
}
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
extern void debug_check_no_locks_held(void) ;
__inline static int arch_spin_is_locked(arch_spinlock_t *lock )
{
  struct __raw_tickets tmp ;
  {
  tmp = *((struct __raw_tickets volatile *)(& lock->ldv_1458.tickets));
  return ((int )tmp.tail != (int )tmp.head);
}
}
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static void ldv_spin_lock_69(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_73(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern int default_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern void add_wait_queue(wait_queue_head_t * , wait_queue_t * ) ;
extern void remove_wait_queue(wait_queue_head_t * , wait_queue_t * ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
void *ldv_kmem_cache_alloc_84(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
extern size_t __VERIFIER_nondet_size_t(void) ;
extern unsigned int __VERIFIER_nondet_uint(void) ;
extern long schedule_timeout_interruptible(long ) ;
extern int wake_up_process(struct task_struct * ) ;
extern struct task_struct *kthread_create_on_node(int (*)(void * ) , void * , int ,
                                                  char const * , ...) ;
extern int kthread_stop(struct task_struct * ) ;
extern bool kthread_should_stop(void) ;
extern atomic_t system_freezing_cnt ;
extern bool freezing_slow_path(struct task_struct * ) ;
__inline static bool freezing(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  {
  tmp = atomic_read((atomic_t const *)(& system_freezing_cnt));
  tmp___0 = ldv__builtin_expect(tmp == 0, 1L);
  if (tmp___0 != 0L) {
    return (0);
  } else {
  }
  tmp___1 = freezing_slow_path(p);
  return (tmp___1);
}
}
extern bool __refrigerator(bool ) ;
__inline static bool try_to_freeze_unsafe(void)
{
  struct task_struct *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  {
  __might_sleep("include/linux/freezer.h", 56, 0);
  tmp = get_current();
  tmp___0 = freezing(tmp);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  tmp___2 = ldv__builtin_expect((long )tmp___1, 1L);
  if (tmp___2 != 0L) {
    return (0);
  } else {
  }
  tmp___3 = __refrigerator(0);
  return (tmp___3);
}
}
__inline static bool try_to_freeze(void)
{
  struct task_struct *tmp ;
  bool tmp___0 ;
  {
  tmp = get_current();
  if ((tmp->flags & 32768U) == 0U) {
    debug_check_no_locks_held();
  } else {
  }
  tmp___0 = try_to_freeze_unsafe();
  return (tmp___0);
}
}
extern bool set_freezable(void) ;
extern long video_ioctl2(struct file * , unsigned int , unsigned long ) ;
__inline static char const *dev_name(struct device const *dev )
{
  char const *tmp ;
  {
  if ((unsigned long )dev->init_name != (unsigned long )((char const * )0)) {
    return ((char const *)dev->init_name);
  } else {
  }
  tmp = kobject_name(& dev->kobj);
  return (tmp);
}
}
extern int __video_register_device(struct video_device * , int , int , int , struct module * ) ;
__inline static int video_register_device(struct video_device *vdev , int type , int nr )
{
  int tmp ;
  {
  tmp = __video_register_device(vdev, type, nr, 1, (vdev->fops)->owner);
  return (tmp);
}
}
extern void video_unregister_device(struct video_device * ) ;
extern struct video_device *video_device_alloc(void) ;
extern void video_device_release(struct video_device * ) ;
__inline static void *video_get_drvdata(struct video_device *vdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& vdev->dev));
  return (tmp);
}
}
__inline static void video_set_drvdata(struct video_device *vdev , void *data )
{
  {
  dev_set_drvdata(& vdev->dev, data);
  return;
}
}
extern struct video_device *video_devdata(struct file * ) ;
__inline static void *video_drvdata(struct file *file )
{
  struct video_device *tmp ;
  void *tmp___0 ;
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  return (tmp___0);
}
}
extern void v4l2_get_timestamp(struct timeval * ) ;
extern int v4l2_event_unsubscribe(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
extern void *vb2_plane_vaddr(struct vb2_buffer * , unsigned int ) ;
extern void *vb2_plane_cookie(struct vb2_buffer * , unsigned int ) ;
extern void vb2_buffer_done(struct vb2_buffer * , enum vb2_buffer_state ) ;
extern int vb2_queue_init(struct vb2_queue * ) ;
__inline static bool vb2_is_busy(struct vb2_queue *q )
{
  {
  return (q->num_buffers != 0U);
}
}
__inline static void *vb2_get_drv_priv(struct vb2_queue *q )
{
  {
  return (q->drv_priv);
}
}
__inline static void vb2_set_plane_payload(struct vb2_buffer *vb , unsigned int plane_no ,
                                           unsigned long size )
{
  {
  if (vb->num_planes > plane_no) {
    vb->v4l2_planes[plane_no].bytesused = (__u32 )size;
  } else {
  }
  return;
}
}
extern int vb2_ioctl_reqbufs(struct file * , void * , struct v4l2_requestbuffers * ) ;
extern int vb2_ioctl_querybuf(struct file * , void * , struct v4l2_buffer * ) ;
extern int vb2_ioctl_qbuf(struct file * , void * , struct v4l2_buffer * ) ;
extern int vb2_ioctl_dqbuf(struct file * , void * , struct v4l2_buffer * ) ;
extern int vb2_ioctl_streamon(struct file * , void * , enum v4l2_buf_type ) ;
extern int vb2_ioctl_streamoff(struct file * , void * , enum v4l2_buf_type ) ;
extern int vb2_fop_mmap(struct file * , struct vm_area_struct * ) ;
extern int vb2_fop_release(struct file * ) ;
extern ssize_t vb2_fop_read(struct file * , char * , size_t , loff_t * ) ;
extern unsigned int vb2_fop_poll(struct file * , poll_table * ) ;
extern void vb2_ops_wait_prepare(struct vb2_queue * ) ;
extern void vb2_ops_wait_finish(struct vb2_queue * ) ;
__inline static dma_addr_t vb2_dma_contig_plane_dma_addr(struct vb2_buffer *vb , unsigned int plane_no )
{
  dma_addr_t *addr ;
  void *tmp ;
  {
  tmp = vb2_plane_cookie(vb, plane_no);
  addr = (dma_addr_t *)tmp;
  return (*addr);
}
}
extern void *vb2_dma_contig_init_ctx(struct device * ) ;
extern void vb2_dma_contig_cleanup_ctx(void * ) ;
extern struct vb2_mem_ops const vb2_dma_contig_memops ;
__inline static char const *pci_name(struct pci_dev const *pdev )
{
  char const *tmp ;
  {
  tmp = dev_name(& pdev->dev);
  return (tmp);
}
}
extern int v4l2_fh_open(struct file * ) ;
extern int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler * , unsigned int ,
                                        struct lock_class_key * , char const * ) ;
extern void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler * ) ;
extern struct v4l2_ctrl *v4l2_ctrl_new_custom(struct v4l2_ctrl_handler * , struct v4l2_ctrl_config const * ,
                                              void * ) ;
extern int v4l2_ctrl_log_status(struct file * , void * ) ;
extern int v4l2_ctrl_subscribe_event(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
__inline static u32 solo_reg_read___2(struct solo_dev *solo_dev , int reg )
{
  unsigned long flags ;
  u32 ret ;
  u16 val ;
  {
  ldv_spin_lock();
  ret = readl((void const volatile *)solo_dev->reg_base + (unsigned long )reg);
  __asm__ volatile ("lfence": : : "memory");
  pci_read_config_word((struct pci_dev const *)solo_dev->pdev, 6, & val);
  __asm__ volatile ("lfence": : : "memory");
  spin_unlock_irqrestore(& solo_dev->reg_io_lock, flags);
  return (ret);
}
}
__inline static void solo_reg_write___2(struct solo_dev *solo_dev , int reg , u32 data )
{
  unsigned long flags ;
  u16 val ;
  {
  ldv_spin_lock();
  writel(data, (void volatile *)solo_dev->reg_base + (unsigned long )reg);
  __asm__ volatile ("sfence": : : "memory");
  pci_read_config_word((struct pci_dev const *)solo_dev->pdev, 6, & val);
  __asm__ volatile ("lfence": : : "memory");
  spin_unlock_irqrestore(& solo_dev->reg_io_lock, flags);
  return;
}
}
__inline static void solo_irq_on___2(struct solo_dev *dev , u32 mask )
{
  {
  dev->irq_mask = dev->irq_mask | mask;
  solo_reg_write___2(dev, 20, dev->irq_mask);
  return;
}
}
__inline static void solo_irq_off___2(struct solo_dev *dev , u32 mask )
{
  {
  dev->irq_mask = dev->irq_mask & ~ mask;
  solo_reg_write___2(dev, 20, dev->irq_mask);
  return;
}
}
int solo_set_video_type(struct solo_dev *solo_dev , bool is_50hz ) ;
void solo_update_mode(struct solo_enc_dev *solo_enc ) ;
int tw28_get_video_status(struct solo_dev *solo_dev , u8 ch ) ;
__inline static void erase_on(struct solo_dev *solo_dev )
{
  {
  solo_reg_write___2(solo_dev, 788, 1U);
  solo_dev->erasing = 1U;
  solo_dev->frame_blank = 0U;
  return;
}
}
__inline static int erase_off(struct solo_dev *solo_dev )
{
  unsigned int tmp ;
  {
  if (solo_dev->erasing == 0U) {
    return (0);
  } else {
  }
  if (solo_dev->frame_blank == 0U) {
    solo_reg_write___2(solo_dev, 788, 0U);
  } else {
  }
  tmp = solo_dev->frame_blank;
  solo_dev->frame_blank = solo_dev->frame_blank + 1U;
  if (tmp > 7U) {
    solo_dev->erasing = 0U;
  } else {
  }
  return (1);
}
}
void solo_video_in_isr(struct solo_dev *solo_dev )
{
  {
  __wake_up(& solo_dev->disp_thread_wait, 1U, 0, (void *)0);
  return;
}
}
static void solo_win_setup(struct solo_dev *solo_dev , u8 ch , int sx , int sy , int ex ,
                           int ey , int scale )
{
  {
  if ((int )ch >= solo_dev->nr_chans) {
    return;
  } else {
  }
  solo_reg_write___2(solo_dev, ((int )ch + 96) * 4, (u32 )(((((int )ch << 28) | (sx << 12)) | ex) | (scale << 24)));
  solo_reg_write___2(solo_dev, ((int )ch + 112) * 4, (u32 )((sy << 12) | ey));
  return;
}
}
static int solo_v4l2_ch_ext_4up(struct solo_dev *solo_dev , u8 idx , int on )
{
  u8 ch ;
  u8 i ;
  {
  ch = (unsigned int )idx * 4U;
  if ((int )ch >= solo_dev->nr_chans) {
    return (-22);
  } else {
  }
  if (on == 0) {
    i = ch;
    goto ldv_34652;
    ldv_34651:
    solo_win_setup(solo_dev, (int )i, (int )solo_dev->video_hsize, (int )solo_dev->video_vsize * 2,
                   (int )solo_dev->video_hsize, (int )solo_dev->video_vsize * 2, 0);
    i = (u8 )((int )i + 1);
    ldv_34652: ;
    if ((int )i < (int )ch + 4) {
      goto ldv_34651;
    } else {
    }
    return (0);
  } else {
  }
  solo_win_setup(solo_dev, (int )ch, 0, 0, (int )((unsigned int )solo_dev->video_hsize / 2U),
                 ((int )solo_dev->video_vsize * 2) / 2, 3);
  solo_win_setup(solo_dev, (int )((unsigned int )ch + 1U), (int )((unsigned int )solo_dev->video_hsize / 2U),
                 0, (int )solo_dev->video_hsize, ((int )solo_dev->video_vsize * 2) / 2,
                 3);
  solo_win_setup(solo_dev, (int )((unsigned int )ch + 2U), 0, ((int )solo_dev->video_vsize * 2) / 2,
                 (int )((unsigned int )solo_dev->video_hsize / 2U), (int )solo_dev->video_vsize * 2,
                 3);
  solo_win_setup(solo_dev, (int )((unsigned int )ch + 3U), (int )((unsigned int )solo_dev->video_hsize / 2U),
                 ((int )solo_dev->video_vsize * 2) / 2, (int )solo_dev->video_hsize,
                 (int )solo_dev->video_vsize * 2, 3);
  return (0);
}
}
static int solo_v4l2_ch_ext_16up(struct solo_dev *solo_dev , int on )
{
  int sy ;
  int ysize ;
  int hsize ;
  int i ;
  {
  if (on == 0) {
    i = 0;
    goto ldv_34663;
    ldv_34662:
    solo_win_setup(solo_dev, (int )((u8 )i), (int )solo_dev->video_hsize, (int )solo_dev->video_vsize * 2,
                   (int )solo_dev->video_hsize, (int )solo_dev->video_vsize * 2, 0);
    i = i + 1;
    ldv_34663: ;
    if (i <= 15) {
      goto ldv_34662;
    } else {
    }
    return (0);
  } else {
  }
  ysize = ((int )solo_dev->video_vsize * 2) / 4;
  hsize = (int )((unsigned int )solo_dev->video_hsize / 4U);
  sy = 0;
  i = 0;
  goto ldv_34666;
  ldv_34665:
  solo_win_setup(solo_dev, (int )((unsigned int )((u8 )i) * 4U), 0, sy, hsize, sy + ysize,
                 5);
  solo_win_setup(solo_dev, (int )((unsigned int )((u8 )i) * 4U + 1U), hsize, sy, hsize * 2,
                 sy + ysize, 5);
  solo_win_setup(solo_dev, (int )((unsigned int )((u8 )i) * 4U + 2U), hsize * 2, sy,
                 hsize * 3, sy + ysize, 5);
  solo_win_setup(solo_dev, (int )((unsigned int )((u8 )i) * 4U + 3U), hsize * 3, sy,
                 (int )solo_dev->video_hsize, sy + ysize, 5);
  i = i + 1;
  sy = sy + ysize;
  ldv_34666: ;
  if (i <= 3) {
    goto ldv_34665;
  } else {
  }
  return (0);
}
}
static int solo_v4l2_ch(struct solo_dev *solo_dev , u8 ch , int on )
{
  u8 ext_ch ;
  int tmp ;
  int tmp___0 ;
  {
  if ((int )ch < solo_dev->nr_chans) {
    solo_win_setup(solo_dev, (int )ch, on == 0 ? (int )solo_dev->video_hsize : 0,
                   on == 0 ? (int )solo_dev->video_vsize * 2 : 0, (int )solo_dev->video_hsize,
                   (int )solo_dev->video_vsize * 2, on != 0);
    return (0);
  } else {
  }
  if ((int )ch >= solo_dev->nr_chans + solo_dev->nr_ext) {
    return (-22);
  } else {
  }
  ext_ch = (int )ch - (int )((u8 )solo_dev->nr_chans);
  if ((unsigned int )ext_ch <= 3U) {
    tmp = solo_v4l2_ch_ext_4up(solo_dev, (int )ext_ch, on);
    return (tmp);
  } else {
  }
  tmp___0 = solo_v4l2_ch_ext_16up(solo_dev, on);
  return (tmp___0);
}
}
static int solo_v4l2_set_ch(struct solo_dev *solo_dev , u8 ch )
{
  {
  if ((int )ch >= solo_dev->nr_chans + solo_dev->nr_ext) {
    return (-22);
  } else {
  }
  erase_on(solo_dev);
  solo_v4l2_ch(solo_dev, (int )solo_dev->cur_disp_ch, 0);
  solo_v4l2_ch(solo_dev, (int )ch, 1);
  solo_dev->cur_disp_ch = ch;
  return (0);
}
}
static void solo_fillbuf(struct solo_dev *solo_dev , struct vb2_buffer *vb )
{
  dma_addr_t vbuf ;
  unsigned int fdma_addr ;
  int error ;
  int i ;
  void *p ;
  void *tmp ;
  int image_size ;
  int tmp___0 ;
  u32 tmp___1 ;
  {
  error = -1;
  vbuf = vb2_dma_contig_plane_dma_addr(vb, 0U);
  if (vbuf == 0ULL) {
    goto finish_buf;
  } else {
  }
  tmp___0 = erase_off(solo_dev);
  if (tmp___0 != 0) {
    tmp = vb2_plane_vaddr(vb, 0U);
    p = tmp;
    image_size = ((int )solo_dev->video_hsize * 2) * ((int )solo_dev->video_vsize * 2);
    i = 0;
    goto ldv_34690;
    ldv_34689:
    *((u8 *)p + (unsigned long )i) = 128U;
    *((u8 *)p + ((unsigned long )i + 1UL)) = 0U;
    i = i + 2;
    ldv_34690: ;
    if (i < image_size) {
      goto ldv_34689;
    } else {
    }
    error = 0;
  } else {
    fdma_addr = (unsigned int )(solo_dev->old_write * ((int )solo_dev->video_vsize * 4096));
    error = solo_p2m_dma_t(solo_dev, 0, vbuf, fdma_addr, (u32 )((int )solo_dev->video_hsize * 2),
                           (int )solo_dev->video_vsize * 2, 2048U);
  }
  finish_buf: ;
  if (error == 0) {
    vb2_set_plane_payload(vb, 0U, (unsigned long )(((int )solo_dev->video_vsize * 2) * ((int )solo_dev->video_hsize * 2)));
    tmp___1 = solo_dev->sequence;
    solo_dev->sequence = solo_dev->sequence + 1U;
    vb->v4l2_buf.sequence = tmp___1;
    v4l2_get_timestamp(& vb->v4l2_buf.timestamp);
  } else {
  }
  vb2_buffer_done(vb, error != 0 ? 6 : 5);
  return;
}
}
static void solo_thread_try(struct solo_dev *solo_dev )
{
  struct solo_vb2_buf *vb ;
  unsigned int cur_write ;
  u32 tmp ;
  int tmp___0 ;
  struct list_head const *__mptr ;
  int tmp___1 ;
  long tmp___2 ;
  {
  ldv_34700:
  tmp = solo_reg_read___2(solo_dev, 296);
  cur_write = tmp & 7U;
  if ((unsigned int )solo_dev->old_write == cur_write) {
    return;
  } else {
  }
  spin_lock(& solo_dev->slock);
  tmp___0 = list_empty((struct list_head const *)(& solo_dev->vidq_active));
  if (tmp___0 != 0) {
    goto ldv_34697;
  } else {
  }
  __mptr = (struct list_head const *)solo_dev->vidq_active.next;
  vb = (struct solo_vb2_buf *)__mptr + 0xfffffffffffffc60UL;
  solo_dev->old_write = (int )cur_write;
  list_del(& vb->list);
  spin_unlock(& solo_dev->slock);
  solo_fillbuf(solo_dev, & vb->vb);
  goto ldv_34700;
  ldv_34697:
  tmp___1 = arch_spin_is_locked(& solo_dev->slock.ldv_6347.rlock.raw_lock);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5994/dscv_tempdir/dscv/ri/43_2a/drivers/staging/media/solo6x10/solo6x10-v4l2.o.c.prepared"),
                         "i" (349), "i" (12UL));
    ldv_34701: ;
    goto ldv_34701;
  } else {
  }
  spin_unlock(& solo_dev->slock);
  return;
}
}
static int solo_thread(void *data )
{
  struct solo_dev *solo_dev ;
  wait_queue_t wait ;
  struct task_struct *tmp ;
  long timeout ;
  long tmp___0 ;
  bool tmp___1 ;
  {
  solo_dev = (struct solo_dev *)data;
  tmp = get_current();
  wait.flags = 0U;
  wait.private = (void *)tmp;
  wait.func = & default_wake_function;
  wait.task_list.next = (struct list_head *)0;
  wait.task_list.prev = (struct list_head *)0;
  set_freezable();
  add_wait_queue(& solo_dev->disp_thread_wait, & wait);
  ldv_34709:
  tmp___0 = schedule_timeout_interruptible(250L);
  timeout = tmp___0;
  if (timeout == -512L) {
    goto ldv_34708;
  } else {
    tmp___1 = kthread_should_stop();
    if ((int )tmp___1) {
      goto ldv_34708;
    } else {
    }
  }
  solo_thread_try(solo_dev);
  try_to_freeze();
  goto ldv_34709;
  ldv_34708:
  remove_wait_queue(& solo_dev->disp_thread_wait, & wait);
  return (0);
}
}
static int solo_start_thread(struct solo_dev *solo_dev )
{
  int ret ;
  struct task_struct *__k ;
  struct task_struct *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  {
  ret = 0;
  tmp = kthread_create_on_node(& solo_thread, (void *)solo_dev, -1, "solo6x10_disp");
  __k = tmp;
  tmp___0 = IS_ERR((void const *)__k);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    wake_up_process(__k);
  } else {
  }
  solo_dev->kthread = __k;
  tmp___3 = IS_ERR((void const *)solo_dev->kthread);
  if ((int )tmp___3) {
    tmp___2 = PTR_ERR((void const *)solo_dev->kthread);
    ret = (int )tmp___2;
    solo_dev->kthread = (struct task_struct *)0;
    return (ret);
  } else {
  }
  solo_irq_on___2(solo_dev, 16384U);
  return (ret);
}
}
static void solo_stop_thread(struct solo_dev *solo_dev )
{
  {
  if ((unsigned long )solo_dev->kthread == (unsigned long )((struct task_struct *)0)) {
    return;
  } else {
  }
  solo_irq_off___2(solo_dev, 16384U);
  kthread_stop(solo_dev->kthread);
  solo_dev->kthread = (struct task_struct *)0;
  return;
}
}
static int solo_queue_setup(struct vb2_queue *q , struct v4l2_format const *fmt ,
                            unsigned int *num_buffers , unsigned int *num_planes ,
                            unsigned int *sizes , void **alloc_ctxs )
{
  struct solo_dev *solo_dev ;
  void *tmp ;
  {
  tmp = vb2_get_drv_priv(q);
  solo_dev = (struct solo_dev *)tmp;
  *sizes = (unsigned int )(((int )solo_dev->video_hsize * 2) * ((int )solo_dev->video_vsize * 2));
  *alloc_ctxs = (void *)solo_dev->alloc_ctx;
  *num_planes = 1U;
  if (*num_buffers <= 1U) {
    *num_buffers = 2U;
  } else {
  }
  return (0);
}
}
static int solo_start_streaming(struct vb2_queue *q , unsigned int count )
{
  struct solo_dev *solo_dev ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = vb2_get_drv_priv(q);
  solo_dev = (struct solo_dev *)tmp;
  solo_dev->sequence = 0U;
  tmp___0 = solo_start_thread(solo_dev);
  return (tmp___0);
}
}
static void solo_stop_streaming(struct vb2_queue *q )
{
  struct solo_dev *solo_dev ;
  void *tmp ;
  {
  tmp = vb2_get_drv_priv(q);
  solo_dev = (struct solo_dev *)tmp;
  solo_stop_thread(solo_dev);
  INIT_LIST_HEAD(& solo_dev->vidq_active);
  return;
}
}
static void solo_buf_queue(struct vb2_buffer *vb )
{
  struct vb2_queue *vq ;
  struct solo_dev *solo_dev ;
  void *tmp ;
  struct solo_vb2_buf *solo_vb ;
  struct vb2_buffer const *__mptr ;
  {
  vq = vb->vb2_queue;
  tmp = vb2_get_drv_priv(vq);
  solo_dev = (struct solo_dev *)tmp;
  __mptr = (struct vb2_buffer const *)vb;
  solo_vb = (struct solo_vb2_buf *)__mptr;
  spin_lock(& solo_dev->slock);
  list_add_tail(& solo_vb->list, & solo_dev->vidq_active);
  spin_unlock(& solo_dev->slock);
  __wake_up(& solo_dev->disp_thread_wait, 1U, 1, (void *)0);
  return;
}
}
static struct vb2_ops const solo_video_qops =
     {& solo_queue_setup, & vb2_ops_wait_prepare, & vb2_ops_wait_finish, 0, 0, 0, 0,
    & solo_start_streaming, & solo_stop_streaming, & solo_buf_queue};
static int solo_querycap(struct file *file , void *priv , struct v4l2_capability *cap )
{
  struct solo_dev *solo_dev ;
  void *tmp ;
  char const *tmp___0 ;
  {
  tmp = video_drvdata(file);
  solo_dev = (struct solo_dev *)tmp;
  strcpy((char *)(& cap->driver), "solo6x10");
  strcpy((char *)(& cap->card), "Softlogic 6x10");
  tmp___0 = pci_name((struct pci_dev const *)solo_dev->pdev);
  snprintf((char *)(& cap->bus_info), 32UL, "PCI:%s", tmp___0);
  cap->device_caps = 83886081U;
  cap->capabilities = cap->device_caps | 2147483648U;
  return (0);
}
}
static int solo_enum_ext_input(struct solo_dev *solo_dev , struct v4l2_input *input )
{
  char const *dispnames_1[1U] ;
  char const *dispnames_2[2U] ;
  char const *dispnames_5[5U] ;
  char const * const *dispnames ;
  {
  dispnames_1[0] = "4UP";
  dispnames_2[0] = "4UP-1";
  dispnames_2[1] = "4UP-2";
  dispnames_5[0] = "4UP-1";
  dispnames_5[1] = "4UP-2";
  dispnames_5[2] = "4UP-3";
  dispnames_5[3] = "4UP-4";
  dispnames_5[4] = "16UP";
  if (input->index >= (__u32 )(solo_dev->nr_chans + solo_dev->nr_ext)) {
    return (-22);
  } else {
  }
  if (solo_dev->nr_ext == 5) {
    dispnames = (char const * const *)(& dispnames_5);
  } else
  if (solo_dev->nr_ext == 2) {
    dispnames = (char const * const *)(& dispnames_2);
  } else {
    dispnames = (char const * const *)(& dispnames_1);
  }
  snprintf((char *)(& input->name), 32UL, "Multi %s", *(dispnames + (unsigned long )(input->index - (__u32 )solo_dev->nr_chans)));
  return (0);
}
}
static int solo_enum_input(struct file *file , void *priv , struct v4l2_input *input )
{
  struct solo_dev *solo_dev ;
  void *tmp ;
  int ret ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = video_drvdata(file);
  solo_dev = (struct solo_dev *)tmp;
  if (input->index >= (__u32 )solo_dev->nr_chans) {
    tmp___0 = solo_enum_ext_input(solo_dev, input);
    ret = tmp___0;
    if (ret < 0) {
      return (ret);
    } else {
    }
  } else {
    snprintf((char *)(& input->name), 32UL, "Camera %d", input->index + 1U);
    tmp___1 = tw28_get_video_status(solo_dev, (int )((u8 )input->index));
    if (tmp___1 == 0) {
      input->status = 2U;
    } else {
    }
  }
  input->type = 2U;
  input->std = (solo_dev->vfd)->tvnorms;
  return (0);
}
}
static int solo_set_input(struct file *file , void *priv , unsigned int index )
{
  struct solo_dev *solo_dev ;
  void *tmp ;
  int ret ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = video_drvdata(file);
  solo_dev = (struct solo_dev *)tmp;
  tmp___0 = solo_v4l2_set_ch(solo_dev, (int )((u8 )index));
  ret = tmp___0;
  if (ret == 0) {
    goto ldv_34775;
    ldv_34774: ;
    ldv_34775:
    tmp___1 = erase_off(solo_dev);
    if (tmp___1 != 0) {
      goto ldv_34774;
    } else {
    }
  } else {
  }
  return (ret);
}
}
static int solo_get_input(struct file *file , void *priv , unsigned int *index )
{
  struct solo_dev *solo_dev ;
  void *tmp ;
  {
  tmp = video_drvdata(file);
  solo_dev = (struct solo_dev *)tmp;
  *index = (unsigned int )solo_dev->cur_disp_ch;
  return (0);
}
}
static int solo_enum_fmt_cap(struct file *file , void *priv , struct v4l2_fmtdesc *f )
{
  {
  if (f->index != 0U) {
    return (-22);
  } else {
  }
  f->pixelformat = 1498831189U;
  strlcpy((char *)(& f->description), "UYUV 4:2:2 Packed", 32UL);
  return (0);
}
}
static int solo_try_fmt_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct solo_dev *solo_dev ;
  void *tmp ;
  struct v4l2_pix_format *pix ;
  int image_size ;
  {
  tmp = video_drvdata(file);
  solo_dev = (struct solo_dev *)tmp;
  pix = & f->fmt.pix;
  image_size = ((int )solo_dev->video_hsize * 2) * ((int )solo_dev->video_vsize * 2);
  if (pix->pixelformat != 1498831189U) {
    return (-22);
  } else {
  }
  pix->width = (__u32 )solo_dev->video_hsize;
  pix->height = (__u32 )((int )solo_dev->video_vsize * 2);
  pix->sizeimage = (__u32 )image_size;
  pix->field = 4U;
  pix->pixelformat = 1498831189U;
  pix->colorspace = 1U;
  pix->priv = 0U;
  return (0);
}
}
static int solo_set_fmt_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct solo_dev *solo_dev ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = video_drvdata(file);
  solo_dev = (struct solo_dev *)tmp;
  tmp___0 = vb2_is_busy(& solo_dev->vidq);
  if ((int )tmp___0) {
    return (-16);
  } else {
  }
  tmp___1 = solo_try_fmt_cap(file, priv, f);
  return (tmp___1);
}
}
static int solo_get_fmt_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct solo_dev *solo_dev ;
  void *tmp ;
  struct v4l2_pix_format *pix ;
  {
  tmp = video_drvdata(file);
  solo_dev = (struct solo_dev *)tmp;
  pix = & f->fmt.pix;
  pix->width = (__u32 )solo_dev->video_hsize;
  pix->height = (__u32 )((int )solo_dev->video_vsize * 2);
  pix->pixelformat = 1498831189U;
  pix->field = 4U;
  pix->sizeimage = (__u32 )(((int )solo_dev->video_hsize * 2) * ((int )solo_dev->video_vsize * 2));
  pix->colorspace = 1U;
  pix->bytesperline = (__u32 )((int )solo_dev->video_hsize * 2);
  pix->priv = 0U;
  return (0);
}
}
static int solo_g_std(struct file *file , void *priv , v4l2_std_id *i )
{
  struct solo_dev *solo_dev ;
  void *tmp ;
  {
  tmp = video_drvdata(file);
  solo_dev = (struct solo_dev *)tmp;
  if (solo_dev->video_type == 0U) {
    *i = 4096ULL;
  } else {
    *i = 255ULL;
  }
  return (0);
}
}
int solo_set_video_type(struct solo_dev *solo_dev , bool is_50hz )
{
  int i ;
  bool tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = vb2_is_busy(& solo_dev->vidq);
  if ((int )tmp) {
    return (-16);
  } else {
  }
  i = 0;
  goto ldv_34821;
  ldv_34820:
  tmp___0 = vb2_is_busy(& (solo_dev->v4l2_enc[i])->vidq);
  if ((int )tmp___0) {
    return (-16);
  } else {
  }
  i = i + 1;
  ldv_34821: ;
  if (solo_dev->nr_chans > i) {
    goto ldv_34820;
  } else {
  }
  solo_dev->video_type = (int )is_50hz ? 1073741824U : 0U;
  solo_disp_init(solo_dev);
  solo_enc_init(solo_dev);
  solo_tw28_init(solo_dev);
  i = 0;
  goto ldv_34824;
  ldv_34823:
  solo_update_mode(solo_dev->v4l2_enc[i]);
  i = i + 1;
  ldv_34824: ;
  if (solo_dev->nr_chans > i) {
    goto ldv_34823;
  } else {
  }
  tmp___1 = solo_v4l2_set_ch(solo_dev, (int )solo_dev->cur_disp_ch);
  return (tmp___1);
}
}
static int solo_s_std(struct file *file , void *priv , v4l2_std_id std )
{
  struct solo_dev *solo_dev ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = video_drvdata(file);
  solo_dev = (struct solo_dev *)tmp;
  tmp___0 = solo_set_video_type(solo_dev, (std & 16713471ULL) != 0ULL);
  return (tmp___0);
}
}
static int solo_s_ctrl(struct v4l2_ctrl *ctrl )
{
  struct solo_dev *solo_dev ;
  struct v4l2_ctrl_handler const *__mptr ;
  {
  __mptr = (struct v4l2_ctrl_handler const *)ctrl->handler;
  solo_dev = (struct solo_dev *)__mptr + 0xffffffffffffe8d8UL;
  switch (ctrl->id) {
  case 10025218U: ;
  if (ctrl->ldv_34518.val != 0) {
    solo_reg_write___2(solo_dev, 624, 270536720U);
    solo_reg_write___2(solo_dev, 628, 17858576U);
  } else {
    solo_reg_write___2(solo_dev, 624, 0U);
    solo_reg_write___2(solo_dev, 628, 0U);
  }
  return (0);
  default: ;
  goto ldv_34840;
  }
  ldv_34840: ;
  return (-22);
}
}
static struct v4l2_file_operations const solo_v4l2_fops =
     {& __this_module, & vb2_fop_read, 0, & vb2_fop_poll, 0, & video_ioctl2, 0, 0, & vb2_fop_mmap,
    & v4l2_fh_open, & vb2_fop_release};
static struct v4l2_ioctl_ops const solo_v4l2_ioctl_ops =
     {& solo_querycap, 0, 0, & solo_enum_fmt_cap, 0, 0, 0, 0, 0, & solo_get_fmt_cap,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & solo_set_fmt_cap, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    & solo_try_fmt_cap, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vb2_ioctl_reqbufs, & vb2_ioctl_querybuf,
    & vb2_ioctl_qbuf, 0, & vb2_ioctl_dqbuf, 0, 0, 0, 0, 0, & vb2_ioctl_streamon, & vb2_ioctl_streamoff,
    & solo_g_std, & solo_s_std, 0, & solo_enum_input, & solo_get_input, & solo_set_input,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & v4l2_ctrl_log_status, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, & v4l2_ctrl_subscribe_event, & v4l2_event_unsubscribe, 0};
static struct video_device solo_v4l2_template =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {.alsa = {0U, 0U, 0U}}}, & solo_v4l2_fops,
    {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, {{{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}},
                                           {{0, 0}, 0UL, 0, 0, 0UL, 0, 0, 0, {(char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0},
                                            {0, {0, 0}, 0, 0, 0UL}}, 0, 0}, (unsigned char)0,
            (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0},
     0, 0, {{0}, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 0, 0,
            {0, {0, 0}, 0, 0, 0UL}}, 0, 0, 0, 0, {{0}, (unsigned char)0, (unsigned char)0,
                                                  (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0,
                                                  (_Bool)0, (_Bool)0, (_Bool)0, {{{{{0U}},
                                                                                   0U,
                                                                                   0U,
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}}}},
                                                  {0, 0}, {0U, {{{{{{0U}}, 0U, 0U,
                                                                   0, {0, {0, 0},
                                                                       0, 0, 0UL}}}},
                                                                {0, 0}}}, 0, (_Bool)0,
                                                  (_Bool)0, {{0, 0}, 0UL, 0, 0, 0UL,
                                                             0, 0, 0, {(char)0, (char)0,
                                                                       (char)0, (char)0,
                                                                       (char)0, (char)0,
                                                                       (char)0, (char)0,
                                                                       (char)0, (char)0,
                                                                       (char)0, (char)0,
                                                                       (char)0, (char)0,
                                                                       (char)0, (char)0},
                                                             {0, {0, 0}, 0, 0, 0UL}},
                                                  0UL, {{0L}, {0, 0}, 0, {0, {0, 0},
                                                                          0, 0, 0UL}},
                                                  {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0},
                                                                          0, 0, 0UL}}}},
                                                   {0, 0}}, {0}, {0}, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  0, 0, 0, 0, 0UL, 0UL, 0UL, 0UL,
                                                  0, 0, 0}, 0, 0, 0, 0, 0ULL, 0UL,
     0, {0, 0}, 0, 0, {0, 0}, 0, {0}, 0U, 0U, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0,
                                                                     0, 0UL}}}}, {0,
                                                                                  0},
     {0, {0, 0}, {{0}}}, 0, 0, 0, 0, (_Bool)0, (_Bool)0}, 0, 0, 0, 0, 0, 0, {'s',
                                                                             'o',
                                                                             'l',
                                                                             'o',
                                                                             '6',
                                                                             'x',
                                                                             '1',
                                                                             '0',
                                                                             '\000'},
    0, 0, -1, (unsigned short)0, 0UL, 0, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}},
    {0, 0}, 0, 4351ULL, & video_device_release, & solo_v4l2_ioctl_ops, {0UL, 0UL,
                                                                        0UL}, {0UL,
                                                                               0UL,
                                                                               0UL},
    0};
static struct v4l2_ctrl_ops const solo_ctrl_ops = {0, 0, & solo_s_ctrl};
static struct v4l2_ctrl_config const solo_motion_trace_ctrl =
     {& solo_ctrl_ops, 10025218U, "Motion Detection Trace", 2, 0, 1, 1U, 0, 0U, 0U,
    0, 0, (unsigned char)0};
int solo_v4l2_init(struct solo_dev *solo_dev , unsigned int nr )
{
  int ret ;
  int i ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key _key ;
  void *tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  __init_waitqueue_head(& solo_dev->disp_thread_wait, "&solo_dev->disp_thread_wait",
                        & __key);
  spinlock_check(& solo_dev->slock);
  __raw_spin_lock_init(& solo_dev->slock.ldv_6347.rlock, "&(&solo_dev->slock)->rlock",
                       & __key___0);
  __mutex_init(& solo_dev->lock, "&solo_dev->lock", & __key___1);
  INIT_LIST_HEAD(& solo_dev->vidq_active);
  solo_dev->vfd = video_device_alloc();
  if ((unsigned long )solo_dev->vfd == (unsigned long )((struct video_device *)0)) {
    return (-12);
  } else {
  }
  *(solo_dev->vfd) = solo_v4l2_template;
  (solo_dev->vfd)->v4l2_dev = & solo_dev->v4l2_dev;
  (solo_dev->vfd)->queue = & solo_dev->vidq;
  (solo_dev->vfd)->lock = & solo_dev->lock;
  v4l2_ctrl_handler_init_class(& solo_dev->disp_hdl, 1U, & _key, "solo6x10_v4l2:747:(&solo_dev->disp_hdl)->_lock");
  v4l2_ctrl_new_custom(& solo_dev->disp_hdl, & solo_motion_trace_ctrl, (void *)0);
  if (solo_dev->disp_hdl.error != 0) {
    ret = solo_dev->disp_hdl.error;
    goto fail;
  } else {
  }
  (solo_dev->vfd)->ctrl_handler = & solo_dev->disp_hdl;
  set_bit(2L, (unsigned long volatile *)(& (solo_dev->vfd)->flags));
  video_set_drvdata(solo_dev->vfd, (void *)solo_dev);
  solo_dev->vidq.type = 1;
  solo_dev->vidq.io_modes = 7U;
  solo_dev->vidq.ops = & solo_video_qops;
  solo_dev->vidq.mem_ops = & vb2_dma_contig_memops;
  solo_dev->vidq.drv_priv = (void *)solo_dev;
  solo_dev->vidq.timestamp_flags = 8192U;
  solo_dev->vidq.gfp_flags = 4U;
  solo_dev->vidq.buf_struct_size = 944U;
  solo_dev->vidq.lock = & solo_dev->lock;
  ret = vb2_queue_init(& solo_dev->vidq);
  if (ret < 0) {
    goto fail;
  } else {
  }
  tmp = vb2_dma_contig_init_ctx(& (solo_dev->pdev)->dev);
  solo_dev->alloc_ctx = (struct vb2_alloc_ctx *)tmp;
  tmp___1 = IS_ERR((void const *)solo_dev->alloc_ctx);
  if ((int )tmp___1) {
    dev_err((struct device const *)(& (solo_dev->pdev)->dev), "Can\'t allocate buffer context");
    tmp___0 = PTR_ERR((void const *)solo_dev->alloc_ctx);
    return ((int )tmp___0);
  } else {
  }
  i = 0;
  goto ldv_34862;
  ldv_34861:
  solo_v4l2_set_ch(solo_dev, (int )((u8 )i));
  goto ldv_34859;
  ldv_34858: ;
  ldv_34859:
  tmp___2 = erase_off(solo_dev);
  if (tmp___2 != 0) {
    goto ldv_34858;
  } else {
  }
  i = i + 1;
  ldv_34862: ;
  if (solo_dev->nr_chans > i) {
    goto ldv_34861;
  } else {
  }
  solo_v4l2_set_ch(solo_dev, 0);
  goto ldv_34865;
  ldv_34864: ;
  ldv_34865:
  tmp___3 = erase_off(solo_dev);
  if (tmp___3 != 0) {
    goto ldv_34864;
  } else {
  }
  ret = video_register_device(solo_dev->vfd, 0, (int )nr);
  if (ret < 0) {
    goto fail;
  } else {
  }
  snprintf((char *)(& (solo_dev->vfd)->name), 32UL, "%s (%i)", (char *)"solo6x10",
           (int )(solo_dev->vfd)->num);
  _dev_info((struct device const *)(& (solo_dev->pdev)->dev), "Display as /dev/video%d with %d inputs (%d extended)\n",
            (int )(solo_dev->vfd)->num, solo_dev->nr_chans, solo_dev->nr_ext);
  return (0);
  fail:
  video_device_release(solo_dev->vfd);
  vb2_dma_contig_cleanup_ctx((void *)solo_dev->alloc_ctx);
  v4l2_ctrl_handler_free(& solo_dev->disp_hdl);
  solo_dev->vfd = (struct video_device *)0;
  return (ret);
}
}
void solo_v4l2_exit(struct solo_dev *solo_dev )
{
  {
  if ((unsigned long )solo_dev->vfd == (unsigned long )((struct video_device *)0)) {
    return;
  } else {
  }
  video_unregister_device(solo_dev->vfd);
  vb2_dma_contig_cleanup_ctx((void *)solo_dev->alloc_ctx);
  v4l2_ctrl_handler_free(& solo_dev->disp_hdl);
  solo_dev->vfd = (struct video_device *)0;
  return;
}
}
extern int ldv_probe_10(void) ;
int ldv_retval_3 ;
void ldv_initialize_v4l2_file_operations_12(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(512UL);
  solo_v4l2_fops_group0 = (struct file *)tmp;
  return;
}
}
void ldv_initialize_v4l2_ioctl_ops_11(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  {
  tmp = ldv_zalloc(512UL);
  solo_v4l2_ioctl_ops_group3 = (struct file *)tmp;
  tmp___0 = ldv_zalloc(208UL);
  solo_v4l2_ioctl_ops_group0 = (struct v4l2_format *)tmp___0;
  tmp___1 = ldv_zalloc(32UL);
  solo_v4l2_ioctl_ops_group1 = (struct v4l2_event_subscription *)tmp___1;
  tmp___2 = ldv_zalloc(88UL);
  solo_v4l2_ioctl_ops_group4 = (struct v4l2_buffer *)tmp___2;
  tmp___3 = ldv_zalloc(176UL);
  solo_v4l2_ioctl_ops_group2 = (struct v4l2_fh *)tmp___3;
  return;
}
}
void ldv_initialize_vb2_ops_13(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(688UL);
  solo_video_qops_group0 = (struct vb2_queue *)tmp;
  return;
}
}
void ldv_main_exported_11(void)
{
  void *ldvarg47 ;
  void *tmp ;
  struct v4l2_fmtdesc *ldvarg52 ;
  void *tmp___0 ;
  void *ldvarg61 ;
  void *tmp___1 ;
  void *ldvarg54 ;
  void *tmp___2 ;
  unsigned int *ldvarg48 ;
  void *tmp___3 ;
  void *ldvarg38 ;
  void *tmp___4 ;
  void *ldvarg63 ;
  void *tmp___5 ;
  struct v4l2_capability *ldvarg45 ;
  void *tmp___6 ;
  void *ldvarg44 ;
  void *tmp___7 ;
  void *ldvarg40 ;
  void *tmp___8 ;
  void *ldvarg55 ;
  void *tmp___9 ;
  void *ldvarg53 ;
  void *tmp___10 ;
  enum v4l2_buf_type ldvarg37 ;
  void *ldvarg58 ;
  void *tmp___11 ;
  void *ldvarg57 ;
  void *tmp___12 ;
  void *ldvarg46 ;
  void *tmp___13 ;
  void *ldvarg50 ;
  void *tmp___14 ;
  struct v4l2_requestbuffers *ldvarg62 ;
  void *tmp___15 ;
  void *ldvarg49 ;
  void *tmp___16 ;
  enum v4l2_buf_type ldvarg56 ;
  v4l2_std_id ldvarg59 ;
  void *ldvarg42 ;
  void *tmp___17 ;
  v4l2_std_id *ldvarg43 ;
  void *tmp___18 ;
  struct v4l2_input *ldvarg41 ;
  void *tmp___19 ;
  void *ldvarg60 ;
  void *tmp___20 ;
  void *ldvarg51 ;
  void *tmp___21 ;
  unsigned int ldvarg39 ;
  unsigned int tmp___22 ;
  int tmp___23 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg47 = tmp;
  tmp___0 = ldv_zalloc(64UL);
  ldvarg52 = (struct v4l2_fmtdesc *)tmp___0;
  tmp___1 = ldv_zalloc(1UL);
  ldvarg61 = tmp___1;
  tmp___2 = ldv_zalloc(1UL);
  ldvarg54 = tmp___2;
  tmp___3 = ldv_zalloc(4UL);
  ldvarg48 = (unsigned int *)tmp___3;
  tmp___4 = ldv_zalloc(1UL);
  ldvarg38 = tmp___4;
  tmp___5 = ldv_zalloc(1UL);
  ldvarg63 = tmp___5;
  tmp___6 = ldv_zalloc(104UL);
  ldvarg45 = (struct v4l2_capability *)tmp___6;
  tmp___7 = ldv_zalloc(1UL);
  ldvarg44 = tmp___7;
  tmp___8 = ldv_zalloc(1UL);
  ldvarg40 = tmp___8;
  tmp___9 = ldv_zalloc(1UL);
  ldvarg55 = tmp___9;
  tmp___10 = ldv_zalloc(1UL);
  ldvarg53 = tmp___10;
  tmp___11 = ldv_zalloc(1UL);
  ldvarg58 = tmp___11;
  tmp___12 = ldv_zalloc(1UL);
  ldvarg57 = tmp___12;
  tmp___13 = ldv_zalloc(1UL);
  ldvarg46 = tmp___13;
  tmp___14 = ldv_zalloc(1UL);
  ldvarg50 = tmp___14;
  tmp___15 = ldv_zalloc(20UL);
  ldvarg62 = (struct v4l2_requestbuffers *)tmp___15;
  tmp___16 = ldv_zalloc(1UL);
  ldvarg49 = tmp___16;
  tmp___17 = ldv_zalloc(1UL);
  ldvarg42 = tmp___17;
  tmp___18 = ldv_zalloc(8UL);
  ldvarg43 = (v4l2_std_id *)tmp___18;
  tmp___19 = ldv_zalloc(80UL);
  ldvarg41 = (struct v4l2_input *)tmp___19;
  tmp___20 = ldv_zalloc(1UL);
  ldvarg60 = tmp___20;
  tmp___21 = ldv_zalloc(1UL);
  ldvarg51 = tmp___21;
  tmp___22 = __VERIFIER_nondet_uint();
  ldvarg39 = tmp___22;
  memset((void *)(& ldvarg37), 0, 4UL);
  memset((void *)(& ldvarg56), 0, 4UL);
  memset((void *)(& ldvarg59), 0, 8UL);
  tmp___23 = __VERIFIER_nondet_int();
  switch (tmp___23) {
  case 0: ;
  if (ldv_state_variable_11 == 1) {
    vb2_ioctl_reqbufs(solo_v4l2_ioctl_ops_group3, ldvarg63, ldvarg62);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_34913;
  case 1: ;
  if (ldv_state_variable_11 == 1) {
    v4l2_event_unsubscribe(solo_v4l2_ioctl_ops_group2, (struct v4l2_event_subscription const *)solo_v4l2_ioctl_ops_group1);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_34913;
  case 2: ;
  if (ldv_state_variable_11 == 1) {
    solo_try_fmt_cap(solo_v4l2_ioctl_ops_group3, ldvarg61, solo_v4l2_ioctl_ops_group0);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_34913;
  case 3: ;
  if (ldv_state_variable_11 == 1) {
    solo_s_std(solo_v4l2_ioctl_ops_group3, ldvarg60, ldvarg59);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_34913;
  case 4: ;
  if (ldv_state_variable_11 == 1) {
    v4l2_ctrl_log_status(solo_v4l2_ioctl_ops_group3, ldvarg58);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_34913;
  case 5: ;
  if (ldv_state_variable_11 == 1) {
    vb2_ioctl_streamoff(solo_v4l2_ioctl_ops_group3, ldvarg57, ldvarg56);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_34913;
  case 6: ;
  if (ldv_state_variable_11 == 1) {
    vb2_ioctl_dqbuf(solo_v4l2_ioctl_ops_group3, ldvarg55, solo_v4l2_ioctl_ops_group4);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_34913;
  case 7: ;
  if (ldv_state_variable_11 == 1) {
    vb2_ioctl_querybuf(solo_v4l2_ioctl_ops_group3, ldvarg54, solo_v4l2_ioctl_ops_group4);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_34913;
  case 8: ;
  if (ldv_state_variable_11 == 1) {
    solo_enum_fmt_cap(solo_v4l2_ioctl_ops_group3, ldvarg53, ldvarg52);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_34913;
  case 9: ;
  if (ldv_state_variable_11 == 1) {
    solo_set_fmt_cap(solo_v4l2_ioctl_ops_group3, ldvarg51, solo_v4l2_ioctl_ops_group0);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_34913;
  case 10: ;
  if (ldv_state_variable_11 == 1) {
    solo_get_fmt_cap(solo_v4l2_ioctl_ops_group3, ldvarg50, solo_v4l2_ioctl_ops_group0);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_34913;
  case 11: ;
  if (ldv_state_variable_11 == 1) {
    solo_get_input(solo_v4l2_ioctl_ops_group3, ldvarg49, ldvarg48);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_34913;
  case 12: ;
  if (ldv_state_variable_11 == 1) {
    vb2_ioctl_qbuf(solo_v4l2_ioctl_ops_group3, ldvarg47, solo_v4l2_ioctl_ops_group4);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_34913;
  case 13: ;
  if (ldv_state_variable_11 == 1) {
    solo_querycap(solo_v4l2_ioctl_ops_group3, ldvarg46, ldvarg45);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_34913;
  case 14: ;
  if (ldv_state_variable_11 == 1) {
    solo_g_std(solo_v4l2_ioctl_ops_group3, ldvarg44, ldvarg43);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_34913;
  case 15: ;
  if (ldv_state_variable_11 == 1) {
    solo_enum_input(solo_v4l2_ioctl_ops_group3, ldvarg42, ldvarg41);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_34913;
  case 16: ;
  if (ldv_state_variable_11 == 1) {
    v4l2_ctrl_subscribe_event(solo_v4l2_ioctl_ops_group2, (struct v4l2_event_subscription const *)solo_v4l2_ioctl_ops_group1);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_34913;
  case 17: ;
  if (ldv_state_variable_11 == 1) {
    solo_set_input(solo_v4l2_ioctl_ops_group3, ldvarg40, ldvarg39);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_34913;
  case 18: ;
  if (ldv_state_variable_11 == 1) {
    vb2_ioctl_streamon(solo_v4l2_ioctl_ops_group3, ldvarg38, ldvarg37);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_34913;
  default:
  ldv_stop();
  }
  ldv_34913: ;
  return;
}
}
void ldv_main_exported_13(void)
{
  void **ldvarg99 ;
  void *tmp ;
  unsigned int *ldvarg103 ;
  void *tmp___0 ;
  unsigned int *ldvarg100 ;
  void *tmp___1 ;
  struct vb2_buffer *ldvarg105 ;
  void *tmp___2 ;
  unsigned int *ldvarg101 ;
  void *tmp___3 ;
  struct v4l2_format *ldvarg102 ;
  void *tmp___4 ;
  unsigned int ldvarg104 ;
  unsigned int tmp___5 ;
  int tmp___6 ;
  {
  tmp = ldv_zalloc(8UL);
  ldvarg99 = (void **)tmp;
  tmp___0 = ldv_zalloc(4UL);
  ldvarg103 = (unsigned int *)tmp___0;
  tmp___1 = ldv_zalloc(4UL);
  ldvarg100 = (unsigned int *)tmp___1;
  tmp___2 = ldv_zalloc(928UL);
  ldvarg105 = (struct vb2_buffer *)tmp___2;
  tmp___3 = ldv_zalloc(4UL);
  ldvarg101 = (unsigned int *)tmp___3;
  tmp___4 = ldv_zalloc(208UL);
  ldvarg102 = (struct v4l2_format *)tmp___4;
  tmp___5 = __VERIFIER_nondet_uint();
  ldvarg104 = tmp___5;
  tmp___6 = __VERIFIER_nondet_int();
  switch (tmp___6) {
  case 0: ;
  if (ldv_state_variable_13 == 1) {
    vb2_ops_wait_finish(solo_video_qops_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_34944;
  case 1: ;
  if (ldv_state_variable_13 == 1) {
    solo_buf_queue(ldvarg105);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_34944;
  case 2: ;
  if (ldv_state_variable_13 == 1) {
    vb2_ops_wait_prepare(solo_video_qops_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_34944;
  case 3: ;
  if (ldv_state_variable_13 == 1) {
    solo_stop_streaming(solo_video_qops_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_34944;
  case 4: ;
  if (ldv_state_variable_13 == 1) {
    solo_start_streaming(solo_video_qops_group0, ldvarg104);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_34944;
  case 5: ;
  if (ldv_state_variable_13 == 1) {
    solo_queue_setup(solo_video_qops_group0, (struct v4l2_format const *)ldvarg102,
                     ldvarg101, ldvarg100, ldvarg103, ldvarg99);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_34944;
  default:
  ldv_stop();
  }
  ldv_34944: ;
  return;
}
}
void ldv_main_exported_10(void)
{
  struct video_device *ldvarg106 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1840UL);
  ldvarg106 = (struct video_device *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_10 == 2) {
    video_device_release(ldvarg106);
    ldv_state_variable_10 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_34956;
  case 1: ;
  if (ldv_state_variable_10 == 1) {
    ldv_probe_10();
    ldv_state_variable_10 = 2;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_34956;
  default:
  ldv_stop();
  }
  ldv_34956: ;
  return;
}
}
void ldv_main_exported_9(void)
{
  struct v4l2_ctrl *ldvarg79 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(144UL);
  ldvarg79 = (struct v4l2_ctrl *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_9 == 1) {
    solo_s_ctrl(ldvarg79);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_34964;
  default:
  ldv_stop();
  }
  ldv_34964: ;
  return;
}
}
void ldv_main_exported_12(void)
{
  loff_t *ldvarg83 ;
  void *tmp ;
  struct vm_area_struct *ldvarg86 ;
  void *tmp___0 ;
  struct poll_table_struct *ldvarg82 ;
  void *tmp___1 ;
  unsigned long ldvarg80 ;
  unsigned long tmp___2 ;
  size_t ldvarg84 ;
  size_t tmp___3 ;
  char *ldvarg85 ;
  void *tmp___4 ;
  unsigned int ldvarg81 ;
  unsigned int tmp___5 ;
  int tmp___6 ;
  {
  tmp = ldv_zalloc(8UL);
  ldvarg83 = (loff_t *)tmp;
  tmp___0 = ldv_zalloc(184UL);
  ldvarg86 = (struct vm_area_struct *)tmp___0;
  tmp___1 = ldv_zalloc(16UL);
  ldvarg82 = (struct poll_table_struct *)tmp___1;
  tmp___2 = __VERIFIER_nondet_ulong();
  ldvarg80 = tmp___2;
  tmp___3 = __VERIFIER_nondet_size_t();
  ldvarg84 = tmp___3;
  tmp___4 = ldv_zalloc(1UL);
  ldvarg85 = (char *)tmp___4;
  tmp___5 = __VERIFIER_nondet_uint();
  ldvarg81 = tmp___5;
  tmp___6 = __VERIFIER_nondet_int();
  switch (tmp___6) {
  case 0: ;
  if (ldv_state_variable_12 == 1) {
    vb2_fop_mmap(solo_v4l2_fops_group0, ldvarg86);
    ldv_state_variable_12 = 1;
  } else {
  }
  if (ldv_state_variable_12 == 2) {
    vb2_fop_mmap(solo_v4l2_fops_group0, ldvarg86);
    ldv_state_variable_12 = 2;
  } else {
  }
  goto ldv_34977;
  case 1: ;
  if (ldv_state_variable_12 == 2) {
    vb2_fop_release(solo_v4l2_fops_group0);
    ldv_state_variable_12 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_34977;
  case 2: ;
  if (ldv_state_variable_12 == 2) {
    vb2_fop_read(solo_v4l2_fops_group0, ldvarg85, ldvarg84, ldvarg83);
    ldv_state_variable_12 = 2;
  } else {
  }
  goto ldv_34977;
  case 3: ;
  if (ldv_state_variable_12 == 1) {
    vb2_fop_poll(solo_v4l2_fops_group0, ldvarg82);
    ldv_state_variable_12 = 1;
  } else {
  }
  if (ldv_state_variable_12 == 2) {
    vb2_fop_poll(solo_v4l2_fops_group0, ldvarg82);
    ldv_state_variable_12 = 2;
  } else {
  }
  goto ldv_34977;
  case 4: ;
  if (ldv_state_variable_12 == 1) {
    ldv_retval_3 = v4l2_fh_open(solo_v4l2_fops_group0);
    if (ldv_retval_3 == 0) {
      ldv_state_variable_12 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_34977;
  case 5: ;
  if (ldv_state_variable_12 == 1) {
    video_ioctl2(solo_v4l2_fops_group0, ldvarg81, ldvarg80);
    ldv_state_variable_12 = 1;
  } else {
  }
  if (ldv_state_variable_12 == 2) {
    video_ioctl2(solo_v4l2_fops_group0, ldvarg81, ldvarg80);
    ldv_state_variable_12 = 2;
  } else {
  }
  goto ldv_34977;
  default:
  ldv_stop();
  }
  ldv_34977: ;
  return;
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_69(lock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_73(lock);
  return;
}
}
void *ldv_kmem_cache_alloc_84(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
void *ldv_kmem_cache_alloc_104(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
extern unsigned long msleep_interruptible(unsigned int ) ;
int tw28_set_ctrl_val(struct solo_dev *solo_dev , u32 ctrl , u8 ch , s32 val ) ;
int tw28_get_ctrl_val(struct solo_dev *solo_dev , u32 ctrl , u8 ch , s32 *val ) ;
bool tw28_has_sharpness(struct solo_dev *solo_dev , u8 ch ) ;
u8 tw28_get_audio_gain(struct solo_dev *solo_dev , u8 ch ) ;
void tw28_set_audio_gain(struct solo_dev *solo_dev , u8 ch , u8 val ) ;
static u8 const tbl_tw2864_ntsc_template[256U] =
  { 0U, 240U, 112U, 48U,
        128U, 128U, 0U, 2U,
        18U, 245U, 12U, 208U,
        0U, 0U, 0U, 127U,
        0U, 240U, 112U, 48U,
        128U, 128U, 0U, 2U,
        18U, 245U, 12U, 208U,
        0U, 0U, 0U, 127U,
        0U, 240U, 112U, 48U,
        128U, 128U, 0U, 2U,
        18U, 245U, 12U, 208U,
        0U, 0U, 0U, 127U,
        0U, 240U, 112U, 48U,
        128U, 128U, 0U, 2U,
        18U, 245U, 12U, 208U,
        0U, 0U, 0U, 127U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 163U, 0U,
        0U, 2U, 0U, 204U,
        0U, 128U, 68U, 80U,
        34U, 1U, 216U, 188U,
        184U, 68U, 56U, 0U,
        0U, 120U, 114U, 62U,
        20U, 165U, 228U, 5U,
        0U, 40U, 68U, 68U,
        160U, 136U, 90U, 1U,
        8U, 8U, 8U, 8U,
        26U, 26U, 26U, 26U,
        0U, 0U, 0U, 240U,
        240U, 240U, 240U, 68U,
        68U, 10U, 0U, 255U,
        239U, 239U, 239U, 239U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 85U, 0U,
        177U, 228U, 64U, 0U,
        119U, 119U, 1U, 19U,
        87U, 155U, 223U, 32U,
        100U, 168U, 236U, 193U,
        15U, 17U, 17U, 129U,
        0U, 224U, 187U, 187U,
        0U, 17U, 0U, 0U,
        17U, 0U, 0U, 17U,
        0U, 0U, 17U, 0U,
        131U, 181U, 9U, 120U,
        133U, 0U, 1U, 32U,
        100U, 17U, 64U, 175U,
        255U, 0U, 0U, 0U};
static u8 const tbl_tw2864_pal_template[256U] =
  { 0U, 240U, 112U, 48U,
        128U, 128U, 0U, 18U,
        24U, 245U, 12U, 208U,
        0U, 0U, 1U, 127U,
        0U, 240U, 112U, 48U,
        128U, 128U, 0U, 18U,
        24U, 245U, 12U, 208U,
        0U, 0U, 1U, 127U,
        0U, 240U, 112U, 48U,
        128U, 128U, 0U, 18U,
        24U, 245U, 12U, 208U,
        0U, 0U, 1U, 127U,
        0U, 240U, 112U, 48U,
        128U, 128U, 0U, 18U,
        24U, 245U, 12U, 208U,
        0U, 0U, 1U, 127U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 163U, 0U,
        0U, 2U, 0U, 204U,
        0U, 128U, 68U, 80U,
        34U, 1U, 216U, 188U,
        184U, 68U, 56U, 0U,
        0U, 120U, 114U, 62U,
        20U, 165U, 228U, 5U,
        0U, 40U, 68U, 68U,
        160U, 144U, 90U, 1U,
        10U, 10U, 10U, 10U,
        26U, 26U, 26U, 26U,
        0U, 0U, 0U, 240U,
        240U, 240U, 240U, 68U,
        68U, 10U, 0U, 255U,
        239U, 239U, 239U, 239U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 85U, 0U,
        177U, 228U, 64U, 0U,
        119U, 119U, 1U, 19U,
        87U, 155U, 223U, 32U,
        100U, 168U, 236U, 193U,
        15U, 17U, 17U, 129U,
        0U, 224U, 187U, 187U,
        0U, 17U, 0U, 0U,
        17U, 0U, 0U, 17U,
        0U, 0U, 17U, 0U,
        131U, 181U, 9U, 0U,
        160U, 0U, 1U, 32U,
        100U, 17U, 64U, 175U,
        255U, 0U, 0U, 0U};
static u8 const tbl_tw2865_ntsc_template[256U] =
  { 0U, 240U, 112U, 48U,
        128U, 128U, 0U, 2U,
        18U, 255U, 9U, 208U,
        0U, 0U, 0U, 127U,
        0U, 240U, 112U, 48U,
        128U, 128U, 0U, 2U,
        18U, 255U, 9U, 208U,
        0U, 0U, 0U, 127U,
        0U, 240U, 112U, 48U,
        128U, 128U, 0U, 2U,
        18U, 255U, 9U, 208U,
        0U, 0U, 0U, 127U,
        0U, 240U, 112U, 72U,
        128U, 128U, 0U, 2U,
        18U, 255U, 9U, 208U,
        0U, 0U, 0U, 127U,
        0U, 0U, 144U, 104U,
        0U, 56U, 128U, 128U,
        128U, 128U, 119U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        69U, 17U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 33U, 67U,
        8U, 0U, 0U, 1U,
        241U, 3U, 239U, 3U,
        233U, 3U, 217U, 21U,
        21U, 228U, 163U, 128U,
        0U, 2U, 0U, 204U,
        0U, 128U, 68U, 80U,
        34U, 1U, 216U, 188U,
        184U, 68U, 56U, 0U,
        0U, 120U, 68U, 61U,
        20U, 165U, 224U, 5U,
        0U, 40U, 68U, 68U,
        160U, 144U, 82U, 19U,
        8U, 8U, 8U, 8U,
        26U, 26U, 27U, 26U,
        0U, 0U, 0U, 240U,
        240U, 240U, 240U, 68U,
        68U, 74U, 0U, 255U,
        239U, 239U, 239U, 239U,
        255U, 231U, 233U, 233U,
        235U, 255U, 214U, 216U,
        216U, 215U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 85U, 0U,
        228U, 57U, 0U, 128U,
        119U, 119U, 3U, 32U,
        87U, 155U, 223U, 49U,
        100U, 168U, 236U, 209U,
        15U, 17U, 17U, 129U,
        16U, 192U, 170U, 170U,
        0U, 17U, 0U, 0U,
        17U, 0U, 0U, 17U,
        0U, 0U, 17U, 0U,
        131U, 181U, 9U, 120U,
        133U, 0U, 1U, 32U,
        100U, 81U, 64U, 175U,
        255U, 240U, 0U, 192U};
static u8 const tbl_tw2865_pal_template[256U] =
  { 0U, 240U, 112U, 48U,
        128U, 128U, 0U, 18U,
        17U, 255U, 1U, 195U,
        0U, 0U, 1U, 127U,
        0U, 240U, 112U, 48U,
        128U, 128U, 0U, 18U,
        17U, 255U, 1U, 195U,
        0U, 0U, 1U, 127U,
        0U, 240U, 112U, 48U,
        128U, 128U, 0U, 18U,
        17U, 255U, 1U, 195U,
        0U, 0U, 1U, 127U,
        0U, 240U, 112U, 48U,
        128U, 128U, 0U, 18U,
        17U, 255U, 1U, 195U,
        0U, 0U, 1U, 127U,
        0U, 148U, 144U, 72U,
        0U, 56U, 127U, 128U,
        128U, 128U, 119U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        69U, 17U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 33U, 67U,
        8U, 0U, 0U, 1U,
        241U, 3U, 239U, 3U,
        234U, 3U, 217U, 21U,
        21U, 228U, 163U, 128U,
        0U, 2U, 0U, 204U,
        0U, 128U, 68U, 80U,
        34U, 1U, 216U, 188U,
        184U, 68U, 56U, 0U,
        0U, 120U, 68U, 61U,
        20U, 165U, 224U, 5U,
        0U, 40U, 68U, 68U,
        160U, 144U, 82U, 19U,
        8U, 8U, 8U, 8U,
        26U, 26U, 26U, 26U,
        0U, 0U, 0U, 240U,
        240U, 240U, 240U, 68U,
        68U, 74U, 0U, 255U,
        239U, 239U, 239U, 239U,
        255U, 231U, 233U, 233U,
        233U, 255U, 215U, 216U,
        217U, 216U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 85U, 0U,
        228U, 57U, 0U, 128U,
        119U, 119U, 3U, 32U,
        87U, 155U, 223U, 49U,
        100U, 168U, 236U, 209U,
        15U, 17U, 17U, 129U,
        16U, 192U, 170U, 170U,
        0U, 17U, 0U, 0U,
        17U, 0U, 0U, 17U,
        0U, 0U, 17U, 0U,
        131U, 181U, 9U, 0U,
        160U, 0U, 1U, 32U,
        100U, 81U, 64U, 175U,
        255U, 240U, 0U, 192U};
static u8 tw_readbyte(struct solo_dev *solo_dev , int chip_id , u8 tw6x_off , u8 tw_off )
{
  u8 tmp ;
  u8 tmp___0 ;
  {
  if ((((int )solo_dev->tw2815 >> chip_id) & 1) == 0) {
    tmp = solo_i2c_readbyte(solo_dev, 0, (int )((unsigned int )((u8 )chip_id) + 40U),
                            (int )tw6x_off);
    return (tmp);
  } else {
    tmp___0 = solo_i2c_readbyte(solo_dev, 0, (int )((unsigned int )((u8 )chip_id) + 40U),
                                (int )tw_off);
    return (tmp___0);
  }
}
}
static void tw_writebyte(struct solo_dev *solo_dev , int chip_id , u8 tw6x_off , u8 tw_off ,
                         u8 val )
{
  {
  if ((((int )solo_dev->tw2815 >> chip_id) & 1) == 0) {
    solo_i2c_writebyte(solo_dev, 0, (int )((unsigned int )((u8 )chip_id) + 40U), (int )tw6x_off,
                       (int )val);
  } else {
    solo_i2c_writebyte(solo_dev, 0, (int )((unsigned int )((u8 )chip_id) + 40U), (int )tw_off,
                       (int )val);
  }
  return;
}
}
static void tw_write_and_verify(struct solo_dev *solo_dev , u8 addr , u8 off , u8 val )
{
  int i ;
  u8 rval ;
  u8 tmp ;
  {
  i = 0;
  goto ldv_34042;
  ldv_34041:
  tmp = solo_i2c_readbyte(solo_dev, 0, (int )addr, (int )off);
  rval = tmp;
  if ((int )rval == (int )val) {
    return;
  } else {
  }
  solo_i2c_writebyte(solo_dev, 0, (int )addr, (int )off, (int )val);
  msleep_interruptible(1U);
  i = i + 1;
  ldv_34042: ;
  if (i <= 4) {
    goto ldv_34041;
  } else {
  }
  return;
}
}
static int tw2865_setup(struct solo_dev *solo_dev , u8 dev_addr )
{
  u8 tbl_tw2865_common[256U] ;
  int i ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  if (solo_dev->video_type == 1073741824U) {
    __len = 256UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& tbl_tw2865_common), (void const *)(& tbl_tw2865_pal_template),
                       __len);
    } else {
      __ret = __builtin_memcpy((void *)(& tbl_tw2865_common), (void const *)(& tbl_tw2865_pal_template),
                               __len);
    }
  } else {
    __len___0 = 256UL;
    if (__len___0 > 63UL) {
      __ret___0 = memcpy((void *)(& tbl_tw2865_common), (void const *)(& tbl_tw2865_ntsc_template),
                           __len___0);
    } else {
      __ret___0 = __builtin_memcpy((void *)(& tbl_tw2865_common), (void const *)(& tbl_tw2865_ntsc_template),
                                   __len___0);
    }
  }
  if (solo_dev->nr_chans == 4) {
    tbl_tw2865_common[210] = 1U;
    tbl_tw2865_common[207] = 0U;
  } else
  if (solo_dev->nr_chans == 8) {
    tbl_tw2865_common[210] = 2U;
    if ((unsigned int )dev_addr == 41U) {
      tbl_tw2865_common[207] = 128U;
    } else {
    }
  } else
  if (solo_dev->nr_chans == 16) {
    tbl_tw2865_common[210] = 3U;
    if ((unsigned int )dev_addr == 41U) {
      tbl_tw2865_common[207] = 131U;
    } else
    if ((unsigned int )dev_addr == 42U) {
      tbl_tw2865_common[207] = 131U;
    } else
    if ((unsigned int )dev_addr == 43U) {
      tbl_tw2865_common[207] = 128U;
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_34063;
  ldv_34062: ;
  switch (i) {
  case 253: ;
  goto ldv_34059;
  }
  switch (i & -49) {
  case 0: ;
  goto ldv_34059;
  }
  tw_write_and_verify(solo_dev, (int )dev_addr, (int )((u8 )i), (int )tbl_tw2865_common[i]);
  ldv_34059:
  i = i + 1;
  ldv_34063: ;
  if (i <= 254) {
    goto ldv_34062;
  } else {
  }
  return (0);
}
}
static int tw2864_setup(struct solo_dev *solo_dev , u8 dev_addr )
{
  u8 tbl_tw2864_common[256U] ;
  int i ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  if (solo_dev->video_type == 1073741824U) {
    __len = 256UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& tbl_tw2864_common), (void const *)(& tbl_tw2864_pal_template),
                       __len);
    } else {
      __ret = __builtin_memcpy((void *)(& tbl_tw2864_common), (void const *)(& tbl_tw2864_pal_template),
                               __len);
    }
  } else {
    __len___0 = 256UL;
    if (__len___0 > 63UL) {
      __ret___0 = memcpy((void *)(& tbl_tw2864_common), (void const *)(& tbl_tw2864_ntsc_template),
                           __len___0);
    } else {
      __ret___0 = __builtin_memcpy((void *)(& tbl_tw2864_common), (void const *)(& tbl_tw2864_ntsc_template),
                                   __len___0);
    }
  }
  if ((unsigned int )solo_dev->tw2865 == 0U) {
    if (solo_dev->nr_chans == 4) {
      tbl_tw2864_common[210] = 1U;
      tbl_tw2864_common[207] = 0U;
    } else
    if (solo_dev->nr_chans == 8) {
      tbl_tw2864_common[210] = 2U;
      if ((unsigned int )dev_addr == 40U) {
        tbl_tw2864_common[207] = 67U;
      } else
      if ((unsigned int )dev_addr == 41U) {
        tbl_tw2864_common[207] = 64U;
      } else {
      }
    } else
    if (solo_dev->nr_chans == 16) {
      tbl_tw2864_common[210] = 3U;
      if ((unsigned int )dev_addr == 40U) {
        tbl_tw2864_common[207] = 67U;
      } else
      if ((unsigned int )dev_addr == 41U) {
        tbl_tw2864_common[207] = 67U;
      } else
      if ((unsigned int )dev_addr == 42U) {
        tbl_tw2864_common[207] = 67U;
      } else
      if ((unsigned int )dev_addr == 43U) {
        tbl_tw2864_common[207] = 64U;
      } else {
      }
    } else {
    }
  } else {
    i = 0;
    goto ldv_34078;
    ldv_34077:
    tbl_tw2864_common[(i << 4) | 8] = 18U;
    i = i + 1;
    ldv_34078: ;
    if (i <= 4) {
      goto ldv_34077;
    } else {
    }
    if (solo_dev->nr_chans == 8) {
      tbl_tw2864_common[210] = 2U;
      if ((unsigned int )dev_addr == 41U) {
        tbl_tw2864_common[207] = 128U;
      } else {
      }
    } else
    if (solo_dev->nr_chans == 16) {
      tbl_tw2864_common[210] = 3U;
      if ((unsigned int )dev_addr == 41U) {
        tbl_tw2864_common[207] = 131U;
      } else
      if ((unsigned int )dev_addr == 42U) {
        tbl_tw2864_common[207] = 131U;
      } else
      if ((unsigned int )dev_addr == 43U) {
        tbl_tw2864_common[207] = 128U;
      } else {
      }
    } else {
    }
  }
  i = 0;
  goto ldv_34087;
  ldv_34086: ;
  switch (i) {
  case 253: ;
  goto ldv_34082;
  }
  switch (i & -49) {
  case 0: ;
  case 12: ;
  case 13: ;
  goto ldv_34082;
  }
  tw_write_and_verify(solo_dev, (int )dev_addr, (int )((u8 )i), (int )tbl_tw2864_common[i]);
  ldv_34082:
  i = i + 1;
  ldv_34087: ;
  if (i <= 254) {
    goto ldv_34086;
  } else {
  }
  return (0);
}
}
static int tw2815_setup(struct solo_dev *solo_dev , u8 dev_addr )
{
  u8 tbl_ntsc_tw2815_common[15U] ;
  u8 tbl_pal_tw2815_common[15U] ;
  u8 tbl_tw2815_sfr[54U] ;
  u8 *tbl_tw2815_common ;
  int i ;
  int ch ;
  {
  tbl_ntsc_tw2815_common[0] = 0U;
  tbl_ntsc_tw2815_common[1] = 200U;
  tbl_ntsc_tw2815_common[2] = 32U;
  tbl_ntsc_tw2815_common[3] = 208U;
  tbl_ntsc_tw2815_common[4] = 6U;
  tbl_ntsc_tw2815_common[5] = 240U;
  tbl_ntsc_tw2815_common[6] = 8U;
  tbl_ntsc_tw2815_common[7] = 128U;
  tbl_ntsc_tw2815_common[8] = 128U;
  tbl_ntsc_tw2815_common[9] = 128U;
  tbl_ntsc_tw2815_common[10] = 128U;
  tbl_ntsc_tw2815_common[11] = 2U;
  tbl_ntsc_tw2815_common[12] = 6U;
  tbl_ntsc_tw2815_common[13] = 0U;
  tbl_ntsc_tw2815_common[14] = 17U;
  tbl_pal_tw2815_common[0] = 0U;
  tbl_pal_tw2815_common[1] = 136U;
  tbl_pal_tw2815_common[2] = 32U;
  tbl_pal_tw2815_common[3] = 208U;
  tbl_pal_tw2815_common[4] = 5U;
  tbl_pal_tw2815_common[5] = 32U;
  tbl_pal_tw2815_common[6] = 40U;
  tbl_pal_tw2815_common[7] = 128U;
  tbl_pal_tw2815_common[8] = 128U;
  tbl_pal_tw2815_common[9] = 128U;
  tbl_pal_tw2815_common[10] = 128U;
  tbl_pal_tw2815_common[11] = 130U;
  tbl_pal_tw2815_common[12] = 6U;
  tbl_pal_tw2815_common[13] = 0U;
  tbl_pal_tw2815_common[14] = 17U;
  tbl_tw2815_sfr[0] = 0U;
  tbl_tw2815_sfr[1] = 0U;
  tbl_tw2815_sfr[2] = 0U;
  tbl_tw2815_sfr[3] = 192U;
  tbl_tw2815_sfr[4] = 69U;
  tbl_tw2815_sfr[5] = 160U;
  tbl_tw2815_sfr[6] = 208U;
  tbl_tw2815_sfr[7] = 47U;
  tbl_tw2815_sfr[8] = 100U;
  tbl_tw2815_sfr[9] = 128U;
  tbl_tw2815_sfr[10] = 128U;
  tbl_tw2815_sfr[11] = 130U;
  tbl_tw2815_sfr[12] = 130U;
  tbl_tw2815_sfr[13] = 0U;
  tbl_tw2815_sfr[14] = 0U;
  tbl_tw2815_sfr[15] = 0U;
  tbl_tw2815_sfr[16] = 0U;
  tbl_tw2815_sfr[17] = 15U;
  tbl_tw2815_sfr[18] = 5U;
  tbl_tw2815_sfr[19] = 0U;
  tbl_tw2815_sfr[20] = 0U;
  tbl_tw2815_sfr[21] = 128U;
  tbl_tw2815_sfr[22] = 6U;
  tbl_tw2815_sfr[23] = 0U;
  tbl_tw2815_sfr[24] = 0U;
  tbl_tw2815_sfr[25] = 0U;
  tbl_tw2815_sfr[26] = 0U;
  tbl_tw2815_sfr[27] = 255U;
  tbl_tw2815_sfr[28] = 143U;
  tbl_tw2815_sfr[29] = 0U;
  tbl_tw2815_sfr[30] = 0U;
  tbl_tw2815_sfr[31] = 0U;
  tbl_tw2815_sfr[32] = 136U;
  tbl_tw2815_sfr[33] = 136U;
  tbl_tw2815_sfr[34] = 192U;
  tbl_tw2815_sfr[35] = 0U;
  tbl_tw2815_sfr[36] = 32U;
  tbl_tw2815_sfr[37] = 100U;
  tbl_tw2815_sfr[38] = 168U;
  tbl_tw2815_sfr[39] = 236U;
  tbl_tw2815_sfr[40] = 49U;
  tbl_tw2815_sfr[41] = 117U;
  tbl_tw2815_sfr[42] = 185U;
  tbl_tw2815_sfr[43] = 253U;
  tbl_tw2815_sfr[44] = 0U;
  tbl_tw2815_sfr[45] = 0U;
  tbl_tw2815_sfr[46] = 136U;
  tbl_tw2815_sfr[47] = 136U;
  tbl_tw2815_sfr[48] = 136U;
  tbl_tw2815_sfr[49] = 17U;
  tbl_tw2815_sfr[50] = 0U;
  tbl_tw2815_sfr[51] = 136U;
  tbl_tw2815_sfr[52] = 136U;
  tbl_tw2815_sfr[53] = 0U;
  tbl_ntsc_tw2815_common[6] = 0U;
  tbl_ntsc_tw2815_common[2] = 24U;
  tbl_ntsc_tw2815_common[6] = tbl_ntsc_tw2815_common[6];
  tbl_ntsc_tw2815_common[3] = 224U;
  tbl_ntsc_tw2815_common[6] = (u8 )((unsigned int )tbl_ntsc_tw2815_common[6] | 8U);
  tbl_ntsc_tw2815_common[4] = 5U;
  tbl_ntsc_tw2815_common[6] = tbl_ntsc_tw2815_common[6];
  tbl_ntsc_tw2815_common[5] = 244U;
  tbl_ntsc_tw2815_common[6] = tbl_ntsc_tw2815_common[6];
  tbl_pal_tw2815_common[6] = 0U;
  tbl_pal_tw2815_common[2] = 36U;
  tbl_pal_tw2815_common[6] = tbl_pal_tw2815_common[6];
  tbl_pal_tw2815_common[3] = 60U;
  tbl_pal_tw2815_common[6] = (u8 )((unsigned int )tbl_pal_tw2815_common[6] | 12U);
  tbl_pal_tw2815_common[4] = 6U;
  tbl_pal_tw2815_common[6] = tbl_pal_tw2815_common[6];
  tbl_pal_tw2815_common[5] = 50U;
  tbl_pal_tw2815_common[6] = (u8 )((unsigned int )tbl_pal_tw2815_common[6] | 32U);
  tbl_tw2815_common = solo_dev->video_type == 0U ? (u8 *)(& tbl_ntsc_tw2815_common) : (u8 *)(& tbl_pal_tw2815_common);
  *(tbl_tw2815_common + 13UL) = (u8 )((unsigned int )*(tbl_tw2815_common + 13UL) | 4U);
  tbl_tw2815_sfr[34] = (unsigned int )tbl_tw2815_sfr[34] & 63U;
  if (solo_dev->nr_chans == 4) {
    tbl_tw2815_sfr[35] = (u8 )((unsigned int )tbl_tw2815_sfr[35] | 1U);
    tbl_tw2815_sfr[34] = (u8 )((unsigned int )tbl_tw2815_sfr[34] | 192U);
  } else
  if (solo_dev->nr_chans == 8) {
    tbl_tw2815_sfr[35] = (u8 )((unsigned int )tbl_tw2815_sfr[35] | 2U);
    if ((unsigned int )dev_addr == 40U) {
      tbl_tw2815_sfr[34] = (u8 )((unsigned int )tbl_tw2815_sfr[34] | 64U);
    } else
    if ((unsigned int )dev_addr == 41U) {
      tbl_tw2815_sfr[34] = (u8 )((unsigned int )tbl_tw2815_sfr[34] | 128U);
    } else {
    }
  } else
  if (solo_dev->nr_chans == 16) {
    tbl_tw2815_sfr[35] = (u8 )((unsigned int )tbl_tw2815_sfr[35] | 3U);
    if ((unsigned int )dev_addr == 40U) {
      tbl_tw2815_sfr[34] = (u8 )((unsigned int )tbl_tw2815_sfr[34] | 64U);
    } else
    if ((unsigned int )dev_addr == 41U) {
      tbl_tw2815_sfr[34] = tbl_tw2815_sfr[34];
    } else
    if ((unsigned int )dev_addr == 42U) {
      tbl_tw2815_sfr[34] = tbl_tw2815_sfr[34];
    } else
    if ((unsigned int )dev_addr == 43U) {
      tbl_tw2815_sfr[34] = (u8 )((unsigned int )tbl_tw2815_sfr[34] | 128U);
    } else {
    }
  } else {
  }
  tbl_tw2815_sfr[34] = tbl_tw2815_sfr[34];
  tbl_tw2815_sfr[44] = tbl_tw2815_sfr[44];
  tbl_tw2815_sfr[44] = (u8 )((unsigned int )tbl_tw2815_sfr[44] | 32U);
  tbl_tw2815_sfr[28] = (u8 )((unsigned int )tbl_tw2815_sfr[28] | 32U);
  tbl_tw2815_sfr[48] = 255U;
  tbl_tw2815_sfr[49] = (u8 )((unsigned int )tbl_tw2815_sfr[49] | 16U);
  tbl_tw2815_sfr[45] = (u8 )((unsigned int )tbl_tw2815_sfr[45] | 15U);
  ch = 0;
  goto ldv_34109;
  ldv_34108:
  *(tbl_tw2815_common + 13UL) = (unsigned int )*(tbl_tw2815_common + 13UL) & 252U;
  switch (ch) {
  case 0:
  *(tbl_tw2815_common + 13UL) = (u8 )((unsigned int )*(tbl_tw2815_common + 13UL) | 33U);
  goto ldv_34100;
  case 1:
  *(tbl_tw2815_common + 13UL) = (u8 )((unsigned int )*(tbl_tw2815_common + 13UL) | 32U);
  goto ldv_34100;
  case 2:
  *(tbl_tw2815_common + 13UL) = (u8 )((unsigned int )*(tbl_tw2815_common + 13UL) | 35U);
  goto ldv_34100;
  case 3:
  *(tbl_tw2815_common + 13UL) = (u8 )((unsigned int )*(tbl_tw2815_common + 13UL) | 34U);
  goto ldv_34100;
  }
  ldv_34100:
  i = 0;
  goto ldv_34106;
  ldv_34105: ;
  if (i == 0) {
    goto ldv_34104;
  } else {
  }
  solo_i2c_writebyte(solo_dev, 0, (int )dev_addr, (int )((unsigned int )((u8 )ch) * 16U + (unsigned int )((u8 )i)),
                     (int )*(tbl_tw2815_common + (unsigned long )i));
  ldv_34104:
  i = i + 1;
  ldv_34106: ;
  if (i <= 14) {
    goto ldv_34105;
  } else {
  }
  ch = ch + 1;
  ldv_34109: ;
  if (ch <= 3) {
    goto ldv_34108;
  } else {
  }
  i = 64;
  goto ldv_34113;
  ldv_34112: ;
  if (((((i == 64 || i == 89) || i == 90) || i == 93) || i == 94) || i == 95) {
    goto ldv_34111;
  } else {
  }
  solo_i2c_writebyte(solo_dev, 0, (int )dev_addr, (int )((u8 )i), (int )tbl_tw2815_sfr[i + -64]);
  ldv_34111:
  i = i + 1;
  ldv_34113: ;
  if (i <= 117) {
    goto ldv_34112;
  } else {
  }
  return (0);
}
}
static void saa712x_write_regs(struct solo_dev *dev , uint8_t const *vals , int start ,
                               int n )
{
  {
  goto ldv_34126;
  ldv_34125: ;
  switch (start) {
  case 96: ;
  case 125: ;
  goto ldv_34124;
  }
  solo_i2c_writebyte(dev, 1, 70, (int )((u8 )start), (int )*vals);
  ldv_34124:
  start = start + 1;
  vals = vals + 1;
  ldv_34126: ;
  if (start < n) {
    goto ldv_34125;
  } else {
  }
  return;
}
}
static void saa712x_setup(struct solo_dev *dev )
{
  int reg_start ;
  uint8_t saa7128_regs_ntsc[90U] ;
  uint8_t saa7128_regs_pal[90U] ;
  {
  reg_start = 38;
  saa7128_regs_ntsc[0] = 13U;
  saa7128_regs_ntsc[1] = 0U;
  saa7128_regs_ntsc[2] = 89U;
  saa7128_regs_ntsc[3] = 29U;
  saa7128_regs_ntsc[4] = 117U;
  saa7128_regs_ntsc[5] = 63U;
  saa7128_regs_ntsc[6] = 6U;
  saa7128_regs_ntsc[7] = 63U;
  saa7128_regs_ntsc[8] = 0U;
  saa7128_regs_ntsc[9] = 0U;
  saa7128_regs_ntsc[10] = 0U;
  saa7128_regs_ntsc[11] = 0U;
  saa7128_regs_ntsc[12] = 0U;
  saa7128_regs_ntsc[13] = 0U;
  saa7128_regs_ntsc[14] = 0U;
  saa7128_regs_ntsc[15] = 0U;
  saa7128_regs_ntsc[16] = 0U;
  saa7128_regs_ntsc[17] = 0U;
  saa7128_regs_ntsc[18] = 26U;
  saa7128_regs_ntsc[19] = 26U;
  saa7128_regs_ntsc[20] = 19U;
  saa7128_regs_ntsc[21] = 0U;
  saa7128_regs_ntsc[22] = 0U;
  saa7128_regs_ntsc[23] = 0U;
  saa7128_regs_ntsc[24] = 0U;
  saa7128_regs_ntsc[25] = 0U;
  saa7128_regs_ntsc[26] = 0U;
  saa7128_regs_ntsc[27] = 0U;
  saa7128_regs_ntsc[28] = 0U;
  saa7128_regs_ntsc[29] = 104U;
  saa7128_regs_ntsc[30] = 16U;
  saa7128_regs_ntsc[31] = 151U;
  saa7128_regs_ntsc[32] = 76U;
  saa7128_regs_ntsc[33] = 24U;
  saa7128_regs_ntsc[34] = 155U;
  saa7128_regs_ntsc[35] = 147U;
  saa7128_regs_ntsc[36] = 159U;
  saa7128_regs_ntsc[37] = 255U;
  saa7128_regs_ntsc[38] = 124U;
  saa7128_regs_ntsc[39] = 52U;
  saa7128_regs_ntsc[40] = 63U;
  saa7128_regs_ntsc[41] = 63U;
  saa7128_regs_ntsc[42] = 63U;
  saa7128_regs_ntsc[43] = 131U;
  saa7128_regs_ntsc[44] = 131U;
  saa7128_regs_ntsc[45] = 128U;
  saa7128_regs_ntsc[46] = 13U;
  saa7128_regs_ntsc[47] = 15U;
  saa7128_regs_ntsc[48] = 195U;
  saa7128_regs_ntsc[49] = 6U;
  saa7128_regs_ntsc[50] = 2U;
  saa7128_regs_ntsc[51] = 128U;
  saa7128_regs_ntsc[52] = 113U;
  saa7128_regs_ntsc[53] = 119U;
  saa7128_regs_ntsc[54] = 167U;
  saa7128_regs_ntsc[55] = 103U;
  saa7128_regs_ntsc[56] = 102U;
  saa7128_regs_ntsc[57] = 46U;
  saa7128_regs_ntsc[58] = 123U;
  saa7128_regs_ntsc[59] = 17U;
  saa7128_regs_ntsc[60] = 79U;
  saa7128_regs_ntsc[61] = 31U;
  saa7128_regs_ntsc[62] = 124U;
  saa7128_regs_ntsc[63] = 240U;
  saa7128_regs_ntsc[64] = 33U;
  saa7128_regs_ntsc[65] = 119U;
  saa7128_regs_ntsc[66] = 65U;
  saa7128_regs_ntsc[67] = 136U;
  saa7128_regs_ntsc[68] = 65U;
  saa7128_regs_ntsc[69] = 82U;
  saa7128_regs_ntsc[70] = 237U;
  saa7128_regs_ntsc[71] = 16U;
  saa7128_regs_ntsc[72] = 16U;
  saa7128_regs_ntsc[73] = 0U;
  saa7128_regs_ntsc[74] = 65U;
  saa7128_regs_ntsc[75] = 195U;
  saa7128_regs_ntsc[76] = 0U;
  saa7128_regs_ntsc[77] = 62U;
  saa7128_regs_ntsc[78] = 184U;
  saa7128_regs_ntsc[79] = 2U;
  saa7128_regs_ntsc[80] = 0U;
  saa7128_regs_ntsc[81] = 0U;
  saa7128_regs_ntsc[82] = 0U;
  saa7128_regs_ntsc[83] = 0U;
  saa7128_regs_ntsc[84] = 8U;
  saa7128_regs_ntsc[85] = 2U;
  saa7128_regs_ntsc[86] = 192U;
  saa7128_regs_ntsc[87] = 0U;
  saa7128_regs_ntsc[88] = 255U;
  saa7128_regs_ntsc[89] = 255U;
  saa7128_regs_pal[0] = 13U;
  saa7128_regs_pal[1] = 0U;
  saa7128_regs_pal[2] = 225U;
  saa7128_regs_pal[3] = 29U;
  saa7128_regs_pal[4] = 117U;
  saa7128_regs_pal[5] = 63U;
  saa7128_regs_pal[6] = 6U;
  saa7128_regs_pal[7] = 63U;
  saa7128_regs_pal[8] = 0U;
  saa7128_regs_pal[9] = 0U;
  saa7128_regs_pal[10] = 0U;
  saa7128_regs_pal[11] = 0U;
  saa7128_regs_pal[12] = 0U;
  saa7128_regs_pal[13] = 0U;
  saa7128_regs_pal[14] = 0U;
  saa7128_regs_pal[15] = 0U;
  saa7128_regs_pal[16] = 0U;
  saa7128_regs_pal[17] = 0U;
  saa7128_regs_pal[18] = 26U;
  saa7128_regs_pal[19] = 26U;
  saa7128_regs_pal[20] = 19U;
  saa7128_regs_pal[21] = 0U;
  saa7128_regs_pal[22] = 0U;
  saa7128_regs_pal[23] = 0U;
  saa7128_regs_pal[24] = 0U;
  saa7128_regs_pal[25] = 0U;
  saa7128_regs_pal[26] = 0U;
  saa7128_regs_pal[27] = 0U;
  saa7128_regs_pal[28] = 0U;
  saa7128_regs_pal[29] = 104U;
  saa7128_regs_pal[30] = 16U;
  saa7128_regs_pal[31] = 151U;
  saa7128_regs_pal[32] = 76U;
  saa7128_regs_pal[33] = 24U;
  saa7128_regs_pal[34] = 155U;
  saa7128_regs_pal[35] = 147U;
  saa7128_regs_pal[36] = 159U;
  saa7128_regs_pal[37] = 255U;
  saa7128_regs_pal[38] = 124U;
  saa7128_regs_pal[39] = 52U;
  saa7128_regs_pal[40] = 63U;
  saa7128_regs_pal[41] = 63U;
  saa7128_regs_pal[42] = 63U;
  saa7128_regs_pal[43] = 131U;
  saa7128_regs_pal[44] = 131U;
  saa7128_regs_pal[45] = 128U;
  saa7128_regs_pal[46] = 13U;
  saa7128_regs_pal[47] = 15U;
  saa7128_regs_pal[48] = 195U;
  saa7128_regs_pal[49] = 6U;
  saa7128_regs_pal[50] = 2U;
  saa7128_regs_pal[51] = 128U;
  saa7128_regs_pal[52] = 15U;
  saa7128_regs_pal[53] = 119U;
  saa7128_regs_pal[54] = 167U;
  saa7128_regs_pal[55] = 103U;
  saa7128_regs_pal[56] = 102U;
  saa7128_regs_pal[57] = 46U;
  saa7128_regs_pal[58] = 123U;
  saa7128_regs_pal[59] = 2U;
  saa7128_regs_pal[60] = 53U;
  saa7128_regs_pal[61] = 203U;
  saa7128_regs_pal[62] = 138U;
  saa7128_regs_pal[63] = 9U;
  saa7128_regs_pal[64] = 42U;
  saa7128_regs_pal[65] = 119U;
  saa7128_regs_pal[66] = 65U;
  saa7128_regs_pal[67] = 136U;
  saa7128_regs_pal[68] = 65U;
  saa7128_regs_pal[69] = 82U;
  saa7128_regs_pal[70] = 241U;
  saa7128_regs_pal[71] = 16U;
  saa7128_regs_pal[72] = 32U;
  saa7128_regs_pal[73] = 0U;
  saa7128_regs_pal[74] = 65U;
  saa7128_regs_pal[75] = 195U;
  saa7128_regs_pal[76] = 0U;
  saa7128_regs_pal[77] = 62U;
  saa7128_regs_pal[78] = 184U;
  saa7128_regs_pal[79] = 2U;
  saa7128_regs_pal[80] = 0U;
  saa7128_regs_pal[81] = 0U;
  saa7128_regs_pal[82] = 0U;
  saa7128_regs_pal[83] = 0U;
  saa7128_regs_pal[84] = 18U;
  saa7128_regs_pal[85] = 48U;
  saa7128_regs_pal[86] = 192U;
  saa7128_regs_pal[87] = 0U;
  saa7128_regs_pal[88] = 255U;
  saa7128_regs_pal[89] = 255U;
  if (dev->video_type == 1073741824U) {
    saa712x_write_regs(dev, (uint8_t const *)(& saa7128_regs_pal), reg_start, 90);
  } else {
    saa712x_write_regs(dev, (uint8_t const *)(& saa7128_regs_ntsc), reg_start, 90);
  }
  return;
}
}
int solo_tw28_init(struct solo_dev *solo_dev )
{
  int i ;
  u8 value ;
  {
  solo_dev->tw28_cnt = 0U;
  i = 0;
  goto ldv_34144;
  ldv_34143:
  value = solo_i2c_readbyte(solo_dev, 0, (int )((unsigned int )((u8 )i) + 40U), 255);
  switch ((int )value >> 3) {
  case 24:
  solo_dev->tw2865 = (u8 )((int )((signed char )solo_dev->tw2865) | (int )((signed char )(1 << i)));
  solo_dev->tw28_cnt = (u8 )((int )solo_dev->tw28_cnt + 1);
  goto ldv_34140;
  case 12:
  solo_dev->tw2864 = (u8 )((int )((signed char )solo_dev->tw2864) | (int )((signed char )(1 << i)));
  solo_dev->tw28_cnt = (u8 )((int )solo_dev->tw28_cnt + 1);
  goto ldv_34140;
  default:
  value = solo_i2c_readbyte(solo_dev, 0, (int )((unsigned int )((u8 )i) + 40U), 89);
  if ((unsigned int )((int )value >> 3) == 4U) {
    solo_dev->tw2815 = (u8 )((int )((signed char )solo_dev->tw2815) | (int )((signed char )(1 << i)));
    solo_dev->tw28_cnt = (u8 )((int )solo_dev->tw28_cnt + 1);
  } else {
  }
  }
  ldv_34140:
  i = i + 1;
  ldv_34144: ;
  if (solo_dev->nr_chans / 4 > i) {
    goto ldv_34143;
  } else {
  }
  if ((int )solo_dev->tw28_cnt != solo_dev->nr_chans >> 2) {
    dev_err((struct device const *)(& (solo_dev->pdev)->dev), "Could not initialize any techwell chips\n");
    return (-22);
  } else {
  }
  saa712x_setup(solo_dev);
  i = 0;
  goto ldv_34147;
  ldv_34146: ;
  if (((int )solo_dev->tw2865 >> i) & 1) {
    tw2865_setup(solo_dev, (int )((unsigned int )((u8 )i) + 40U));
  } else
  if (((int )solo_dev->tw2864 >> i) & 1) {
    tw2864_setup(solo_dev, (int )((unsigned int )((u8 )i) + 40U));
  } else {
    tw2815_setup(solo_dev, (int )((unsigned int )((u8 )i) + 40U));
  }
  i = i + 1;
  ldv_34147: ;
  if ((int )solo_dev->tw28_cnt > i) {
    goto ldv_34146;
  } else {
  }
  return (0);
}
}
int tw28_get_video_status(struct solo_dev *solo_dev , u8 ch )
{
  u8 val ;
  u8 chip_num ;
  u8 tmp ;
  {
  chip_num = (u8 )((unsigned int )ch / 4U);
  ch = (unsigned int )ch & 3U;
  tmp = tw_readbyte(solo_dev, (int )chip_num, 253, 90);
  val = (unsigned int )tmp & 15U;
  return (((int )val >> (int )ch) & 1);
}
}
bool tw28_has_sharpness(struct solo_dev *solo_dev , u8 ch )
{
  {
  return ((((int )solo_dev->tw2815 >> (int )((unsigned int )ch / 4U)) & 1) == 0);
}
}
int tw28_set_ctrl_val(struct solo_dev *solo_dev , u32 ctrl , u8 ch , s32 val )
{
  char sval ;
  u8 chip_num ;
  u8 v ;
  u8 tmp ;
  {
  chip_num = (u8 )((unsigned int )ch / 4U);
  ch = (unsigned int )ch & 3U;
  if (val > 255 || val < 0) {
    return (-34);
  } else {
  }
  switch (ctrl) {
  case 9963803U: ;
  if ((((int )solo_dev->tw2815 >> (int )chip_num) & 1) == 0) {
    tmp = solo_i2c_readbyte(solo_dev, 0, (int )((unsigned int )chip_num + 40U), (int )((u8 )((int )((signed char )((int )chip_num << 4)) | 3)));
    v = tmp;
    v = (unsigned int )v & 240U;
    v = (u8 )((int )((signed char )val) | (int )((signed char )v));
    solo_i2c_writebyte(solo_dev, 0, (int )((unsigned int )chip_num + 40U), (int )((u8 )((int )((signed char )((int )chip_num << 4)) | 3)),
                       (int )v);
  } else {
    return (-22);
  }
  goto ldv_34169;
  case 9963779U: ;
  if ((((int )solo_dev->tw2815 >> (int )chip_num) & 1) == 0) {
    sval = (char )((unsigned int )((unsigned char )val) + 128U);
  } else {
    sval = (char )val;
  }
  tw_writebyte(solo_dev, (int )chip_num, (int )((u8 )((int )((signed char )((int )ch << 4)) | 6)),
               (int )((u8 )((int )((signed char )((int )ch << 4)) | 7)), (int )((u8 )sval));
  goto ldv_34169;
  case 9963778U: ;
  if ((((int )solo_dev->tw2815 >> (int )chip_num) & 1) == 0) {
    solo_i2c_writebyte(solo_dev, 0, (int )((unsigned int )chip_num + 40U), (int )((u8 )((int )((signed char )((int )ch << 4)) | 4)),
                       (int )((u8 )val));
  } else {
  }
  tw_writebyte(solo_dev, (int )chip_num, (int )((u8 )((int )((signed char )((int )ch << 4)) | 5)),
               (int )((u8 )((int )((signed char )((int )ch << 4)) | 8)), (int )((u8 )val));
  goto ldv_34169;
  case 9963777U:
  tw_writebyte(solo_dev, (int )chip_num, (int )((u8 )((int )((signed char )((int )ch << 4)) | 2)),
               (int )((u8 )((int )((signed char )((int )ch << 4)) | 9)), (int )((u8 )val));
  goto ldv_34169;
  case 9963776U: ;
  if ((((int )solo_dev->tw2815 >> (int )chip_num) & 1) == 0) {
    sval = (char )((unsigned int )((unsigned char )val) + 128U);
  } else {
    sval = (char )val;
  }
  tw_writebyte(solo_dev, (int )chip_num, (int )((u8 )((int )((signed char )((int )ch << 4)) | 1)),
               (int )((u8 )((int )((signed char )((int )ch << 4)) | 10)), (int )((u8 )sval));
  goto ldv_34169;
  default: ;
  return (-22);
  }
  ldv_34169: ;
  return (0);
}
}
int tw28_get_ctrl_val(struct solo_dev *solo_dev , u32 ctrl , u8 ch , s32 *val )
{
  u8 rval ;
  u8 chip_num ;
  u8 tmp ;
  u8 tmp___0 ;
  {
  chip_num = (u8 )((unsigned int )ch / 4U);
  ch = (unsigned int )ch & 3U;
  switch (ctrl) {
  case 9963803U: ;
  if ((((int )solo_dev->tw2815 >> (int )chip_num) & 1) == 0) {
    rval = solo_i2c_readbyte(solo_dev, 0, (int )((unsigned int )chip_num + 40U), (int )((u8 )((int )((signed char )((int )chip_num << 4)) | 3)));
    *val = (int )rval & 15;
  } else {
    *val = 0;
  }
  goto ldv_34184;
  case 9963779U:
  rval = tw_readbyte(solo_dev, (int )chip_num, (int )((u8 )((int )((signed char )((int )ch << 4)) | 6)),
                     (int )((u8 )((int )((signed char )((int )ch << 4)) | 7)));
  if ((((int )solo_dev->tw2815 >> (int )chip_num) & 1) == 0) {
    *val = (int )((char )rval) + 128;
  } else {
    *val = (s32 )rval;
  }
  goto ldv_34184;
  case 9963778U:
  tmp = tw_readbyte(solo_dev, (int )chip_num, (int )((u8 )((int )((signed char )((int )ch << 4)) | 4)),
                    (int )((u8 )((int )((signed char )((int )ch << 4)) | 8)));
  *val = (s32 )tmp;
  goto ldv_34184;
  case 9963777U:
  tmp___0 = tw_readbyte(solo_dev, (int )chip_num, (int )((u8 )((int )((signed char )((int )ch << 4)) | 2)),
                        (int )((u8 )((int )((signed char )((int )ch << 4)) | 9)));
  *val = (s32 )tmp___0;
  goto ldv_34184;
  case 9963776U:
  rval = tw_readbyte(solo_dev, (int )chip_num, (int )((u8 )((int )((signed char )((int )ch << 4)) | 1)),
                     (int )((u8 )((int )((signed char )((int )ch << 4)) | 10)));
  if ((((int )solo_dev->tw2815 >> (int )chip_num) & 1) == 0) {
    *val = (int )((char )rval) + 128;
  } else {
    *val = (s32 )rval;
  }
  goto ldv_34184;
  default: ;
  return (-22);
  }
  ldv_34184: ;
  return (0);
}
}
u8 tw28_get_audio_gain(struct solo_dev *solo_dev , u8 ch )
{
  u8 val ;
  u8 chip_num ;
  {
  chip_num = (u8 )((unsigned int )ch / 4U);
  ch = (unsigned int )ch & 3U;
  val = tw_readbyte(solo_dev, (int )chip_num, (unsigned int )ch > 1U ? 209 : 208,
                    (unsigned int )ch > 1U ? 97 : 96);
  return ((int )ch & 1 ? (u8 )((int )val >> 4) : (unsigned int )val & 15U);
}
}
void tw28_set_audio_gain(struct solo_dev *solo_dev , u8 ch , u8 val )
{
  u8 old_val ;
  u8 chip_num ;
  {
  chip_num = (u8 )((unsigned int )ch / 4U);
  ch = (unsigned int )ch & 3U;
  old_val = tw_readbyte(solo_dev, (int )chip_num, (unsigned int )ch > 1U ? 209 : 208,
                        (unsigned int )ch > 1U ? 97 : 96);
  val = (u8 )((((int )ch & 1 ? 15 : -16) & (int )((signed char )old_val)) | ((int )ch & 1 ? (signed char )((int )val << 4) : (signed char )val));
  tw_writebyte(solo_dev, (int )chip_num, (unsigned int )ch > 1U ? 209 : 208, (unsigned int )ch > 1U ? 97 : 96,
               (int )val);
  return;
}
}
void *ldv_kmem_cache_alloc_104(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
void *ldv_kmem_cache_alloc_124(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static u32 solo_reg_read___3(struct solo_dev *solo_dev , int reg )
{
  unsigned long flags ;
  u32 ret ;
  u16 val ;
  {
  ldv_spin_lock();
  ret = readl((void const volatile *)solo_dev->reg_base + (unsigned long )reg);
  __asm__ volatile ("lfence": : : "memory");
  pci_read_config_word((struct pci_dev const *)solo_dev->pdev, 6, & val);
  __asm__ volatile ("lfence": : : "memory");
  spin_unlock_irqrestore(& solo_dev->reg_io_lock, flags);
  return (ret);
}
}
__inline static void solo_reg_write___3(struct solo_dev *solo_dev , int reg , u32 data )
{
  unsigned long flags ;
  u16 val ;
  {
  ldv_spin_lock();
  writel(data, (void volatile *)solo_dev->reg_base + (unsigned long )reg);
  __asm__ volatile ("sfence": : : "memory");
  pci_read_config_word((struct pci_dev const *)solo_dev->pdev, 6, & val);
  __asm__ volatile ("lfence": : : "memory");
  spin_unlock_irqrestore(& solo_dev->reg_io_lock, flags);
  return;
}
}
static void solo_gpio_mode(struct solo_dev *solo_dev , unsigned int port_mask , unsigned int mode )
{
  int port ;
  unsigned int ret ;
  {
  ret = solo_reg_read___3(solo_dev, 2816);
  port = 0;
  goto ldv_34022;
  ldv_34021: ;
  if (((unsigned int )(1 << port) & port_mask) == 0U) {
    goto ldv_34020;
  } else {
  }
  ret = (unsigned int )(~ (3 << (port << 1))) & ret;
  ret = ((mode & 3U) << (port << 1)) | ret;
  ldv_34020:
  port = port + 1;
  ldv_34022: ;
  if (port <= 15) {
    goto ldv_34021;
  } else {
  }
  solo_reg_write___3(solo_dev, 2816, ret);
  ret = solo_reg_read___3(solo_dev, 2820);
  port = 0;
  goto ldv_34026;
  ldv_34025: ;
  if (((unsigned int )(1 << (port + 16)) & port_mask) == 0U) {
    goto ldv_34024;
  } else {
  }
  if (mode == 0U) {
    ret = (unsigned int )(~ (1 << port)) & ret;
  } else {
    ret = (unsigned int )(1 << port) | ret;
  }
  ldv_34024:
  port = port + 1;
  ldv_34026: ;
  if (port <= 15) {
    goto ldv_34025;
  } else {
  }
  solo_reg_write___3(solo_dev, 2820, ret);
  return;
}
}
static void solo_gpio_set(struct solo_dev *solo_dev , unsigned int value )
{
  u32 tmp ;
  {
  tmp = solo_reg_read___3(solo_dev, 2824);
  solo_reg_write___3(solo_dev, 2824, tmp | value);
  return;
}
}
static void solo_gpio_clear(struct solo_dev *solo_dev , unsigned int value )
{
  u32 tmp ;
  {
  tmp = solo_reg_read___3(solo_dev, 2824);
  solo_reg_write___3(solo_dev, 2824, tmp & ~ value);
  return;
}
}
static void solo_gpio_config(struct solo_dev *solo_dev )
{
  {
  solo_gpio_mode(solo_dev, 48U, 1U);
  solo_gpio_clear(solo_dev, 48U);
  __const_udelay(429500UL);
  solo_gpio_set(solo_dev, 48U);
  __const_udelay(429500UL);
  solo_gpio_mode(solo_dev, 15U, 2U);
  solo_gpio_mode(solo_dev, 65280U, 1U);
  solo_gpio_clear(solo_dev, 65280U);
  return;
}
}
int solo_gpio_init(struct solo_dev *solo_dev )
{
  {
  solo_gpio_config(solo_dev);
  return (0);
}
}
void solo_gpio_exit(struct solo_dev *solo_dev )
{
  {
  solo_gpio_clear(solo_dev, 48U);
  solo_gpio_config(solo_dev);
  return;
}
}
void *ldv_kmem_cache_alloc_124(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
void *ldv_kmem_cache_alloc_144(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *ldv_kmalloc_140(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void solo_reg_write___4(struct solo_dev *solo_dev , int reg , u32 data )
{
  unsigned long flags ;
  u16 val ;
  {
  ldv_spin_lock();
  writel(data, (void volatile *)solo_dev->reg_base + (unsigned long )reg);
  __asm__ volatile ("sfence": : : "memory");
  pci_read_config_word((struct pci_dev const *)solo_dev->pdev, 6, & val);
  __asm__ volatile ("lfence": : : "memory");
  spin_unlock_irqrestore(& solo_dev->reg_io_lock, flags);
  return;
}
}
int solo_set_motion_threshold(struct solo_dev *solo_dev , u8 ch , u16 val ) ;
int solo_set_motion_block(struct solo_dev *solo_dev , u8 ch , struct solo_motion_thresholds const *thresholds ) ;
static void solo_vin_config(struct solo_dev *solo_dev )
{
  {
  solo_dev->vin_hstart = 8U;
  solo_dev->vin_vstart = 2U;
  solo_reg_write___4(solo_dev, 12, 2162687U);
  solo_reg_write___4(solo_dev, 284, (u32 )((((int )solo_dev->vin_hstart << 21) | ((int )solo_dev->vin_vstart << 11)) | ((int )solo_dev->vin_vstart + (int )solo_dev->video_vsize)));
  solo_reg_write___4(solo_dev, 288, (u32 )((((int )solo_dev->vout_hstart << 21) | ((int )solo_dev->vout_vstart << 11)) | ((int )solo_dev->vout_vstart + (int )solo_dev->video_vsize)));
  solo_reg_write___4(solo_dev, 292, 3072U);
  solo_reg_write___4(solo_dev, 272, 0U);
  if (solo_dev->type == 0) {
    solo_reg_write___4(solo_dev, 276, 0U);
  } else {
    solo_reg_write___4(solo_dev, 276, 67108864U);
  }
  solo_reg_write___4(solo_dev, 280, 2U);
  if (solo_dev->video_type == 0U) {
    solo_reg_write___4(solo_dev, 304, 2U);
    solo_reg_write___4(solo_dev, 308, 3514614U);
    solo_reg_write___4(solo_dev, 316, 16628U);
  } else {
    solo_reg_write___4(solo_dev, 304, 3U);
    solo_reg_write___4(solo_dev, 308, 3539238U);
    solo_reg_write___4(solo_dev, 316, 16676U);
  }
  solo_reg_write___4(solo_dev, 312, 66272U);
  return;
}
}
static void solo_vout_config_cursor(struct solo_dev *dev )
{
  int i ;
  {
  i = 0;
  goto ldv_34464;
  ldv_34463:
  solo_reg_write___4(dev, (i + 228) * 4, 0U);
  i = i + 1;
  ldv_34464: ;
  if (i <= 19) {
    goto ldv_34463;
  } else {
  }
  solo_reg_write___4(dev, 896, 0U);
  solo_reg_write___4(dev, 900, 2155876480U);
  solo_reg_write___4(dev, 904, 57472U);
  return;
}
}
static void solo_vout_config(struct solo_dev *solo_dev )
{
  {
  solo_dev->vout_hstart = 6U;
  solo_dev->vout_vstart = 8U;
  solo_reg_write___4(solo_dev, 768, solo_dev->video_type | 196608U);
  solo_reg_write___4(solo_dev, 772, (u32 )(((int )solo_dev->vout_hstart << 11) | ((int )solo_dev->vout_hstart + (int )solo_dev->video_hsize)));
  solo_reg_write___4(solo_dev, 776, (u32 )(((int )solo_dev->vout_vstart << 11) | ((int )solo_dev->vout_vstart + (int )solo_dev->video_vsize)));
  solo_reg_write___4(solo_dev, 780, (u32 )(((int )solo_dev->video_hsize << 11) | (int )solo_dev->video_vsize));
  solo_reg_write___4(solo_dev, 816, 2693308552U);
  solo_reg_write___4(solo_dev, 820, 277811343U);
  solo_reg_write___4(solo_dev, 800, 276828288U);
  solo_reg_write___4(solo_dev, 788, 1U);
  solo_reg_write___4(solo_dev, 576, 0U);
  solo_reg_write___4(solo_dev, 792, 0U);
  solo_reg_write___4(solo_dev, 796, 0U);
  solo_reg_write___4(solo_dev, 784, 2281701376U);
  solo_vout_config_cursor(solo_dev);
  solo_reg_write___4(solo_dev, 268, (u32 )((1 << solo_dev->nr_chans) + -1));
  return;
}
}
static int solo_dma_vin_region(struct solo_dev *solo_dev , u32 off , u16 val , int reg_size )
{
  u16 *buf ;
  int n ;
  int size ;
  int i ;
  int ret ;
  void *tmp ;
  {
  n = 64;
  size = (int const )((unsigned int )n * 2U);
  ret = 0;
  tmp = kmalloc((size_t )size, 208U);
  buf = (u16 *)tmp;
  if ((unsigned long )buf == (unsigned long )((u16 *)0U)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_34481;
  ldv_34480:
  *(buf + (unsigned long )i) = val;
  i = i + 1;
  ldv_34481: ;
  if (i < n) {
    goto ldv_34480;
  } else {
  }
  i = 0;
  goto ldv_34485;
  ldv_34484:
  ret = solo_p2m_dma(solo_dev, 1, (void *)buf, ((solo_dev->type == 0 ? 6815744U : 8912896U) + off) + (u32 )i,
                     (u32 )size, 0, 0U);
  if (ret != 0) {
    goto ldv_34483;
  } else {
  }
  i = i + size;
  ldv_34485: ;
  if (i < reg_size) {
    goto ldv_34484;
  } else {
  }
  ldv_34483:
  kfree((void const *)buf);
  return (ret);
}
}
int solo_set_motion_threshold(struct solo_dev *solo_dev , u8 ch , u16 val )
{
  int tmp ;
  {
  if ((int )ch > solo_dev->nr_chans) {
    return (-22);
  } else {
  }
  tmp = solo_dma_vin_region(solo_dev, (u32 )(((int )ch + 1) * 16384), (int )val, 8192);
  return (tmp);
}
}
int solo_set_motion_block(struct solo_dev *solo_dev , u8 ch , struct solo_motion_thresholds const *thresholds )
{
  u32 off ;
  u16 buf[64U] ;
  int x ;
  int y ;
  int ret ;
  int tmp ;
  {
  off = (u32 )(((int )ch + 1) * 16384);
  ret = 0;
  memset((void *)(& buf), 0, 128UL);
  y = 0;
  goto ldv_34505;
  ldv_34504:
  x = 0;
  goto ldv_34502;
  ldv_34501:
  buf[x] = thresholds->thresholds[y][x];
  x = x + 1;
  ldv_34502: ;
  if (x <= 44) {
    goto ldv_34501;
  } else {
  }
  tmp = solo_p2m_dma(solo_dev, 1, (void *)(& buf), ((solo_dev->type == 0 ? 6815744U : 8912896U) + off) + (u32 )((unsigned long )y) * 128U,
                     128U, 0, 0U);
  ret = tmp | ret;
  y = y + 1;
  ldv_34505: ;
  if (y <= 44) {
    goto ldv_34504;
  } else {
  }
  return (ret);
}
}
static void solo_motion_config(struct solo_dev *solo_dev )
{
  int i ;
  {
  i = 0;
  goto ldv_34512;
  ldv_34511:
  solo_dma_vin_region(solo_dev, (u32 )(i * 1024), 0, 1024);
  solo_dma_vin_region(solo_dev, (u32 )((i + 1) * 16384 + 8192), 0, 8192);
  solo_set_motion_threshold(solo_dev, (int )((u8 )i), 768);
  i = i + 1;
  ldv_34512: ;
  if (solo_dev->nr_chans > i) {
    goto ldv_34511;
  } else {
  }
  solo_reg_write___4(solo_dev, 608, solo_dev->type == 0 ? 104U : 136U);
  solo_reg_write___4(solo_dev, 612, (u32 )(((int )((unsigned int )solo_dev->video_hsize / 16U) << 16) | 50331658));
  solo_reg_write___4(solo_dev, 624, 0U);
  solo_reg_write___4(solo_dev, 628, 0U);
  return;
}
}
int solo_disp_init(struct solo_dev *solo_dev )
{
  int i ;
  {
  solo_dev->video_hsize = 704U;
  if (solo_dev->video_type == 0U) {
    solo_dev->video_vsize = 240U;
    solo_dev->fps = 30U;
  } else {
    solo_dev->video_vsize = 288U;
    solo_dev->fps = 25U;
  }
  solo_vin_config(solo_dev);
  solo_motion_config(solo_dev);
  solo_vout_config(solo_dev);
  i = 0;
  goto ldv_34519;
  ldv_34518:
  solo_reg_write___4(solo_dev, (i + 128) * 4, 1U);
  i = i + 1;
  ldv_34519: ;
  if (solo_dev->nr_chans > i) {
    goto ldv_34518;
  } else {
  }
  return (0);
}
}
void solo_disp_exit(struct solo_dev *solo_dev )
{
  int i ;
  {
  solo_reg_write___4(solo_dev, 784, 0U);
  solo_reg_write___4(solo_dev, 792, 0U);
  solo_reg_write___4(solo_dev, 796, 0U);
  i = 0;
  goto ldv_34526;
  ldv_34525:
  solo_reg_write___4(solo_dev, (i + 96) * 4, 0U);
  solo_reg_write___4(solo_dev, (i + 112) * 4, 0U);
  solo_reg_write___4(solo_dev, (i + 128) * 4, 0U);
  i = i + 1;
  ldv_34526: ;
  if (solo_dev->nr_chans > i) {
    goto ldv_34525;
  } else {
  }
  i = 0;
  goto ldv_34529;
  ldv_34528:
  solo_reg_write___4(solo_dev, (i + 208) * 4, 0U);
  i = i + 1;
  ldv_34529: ;
  if (i <= 4) {
    goto ldv_34528;
  } else {
  }
  i = 0;
  goto ldv_34532;
  ldv_34531:
  solo_reg_write___4(solo_dev, (i + 213) * 4, 0U);
  i = i + 1;
  ldv_34532: ;
  if (i <= 4) {
    goto ldv_34531;
  } else {
  }
  solo_reg_write___4(solo_dev, 824, 0U);
  solo_reg_write___4(solo_dev, 828, 0U);
  solo_reg_write___4(solo_dev, 872, 0U);
  solo_reg_write___4(solo_dev, 876, 0U);
  solo_reg_write___4(solo_dev, 880, 0U);
  solo_reg_write___4(solo_dev, 884, 0U);
  solo_reg_write___4(solo_dev, 888, 0U);
  solo_reg_write___4(solo_dev, 892, 0U);
  return;
}
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  ldv_kmalloc_140(size, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_144(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
void *ldv_kmem_cache_alloc_164(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern struct font_desc const *find_font(char const * ) ;
extern u8 const byte_rev_table[256U] ;
__inline static u8 bitrev8(u8 byte )
{
  {
  return ((u8 )byte_rev_table[(int )byte]);
}
}
__inline static u32 solo_reg_read___4(struct solo_dev *solo_dev , int reg )
{
  unsigned long flags ;
  u32 ret ;
  u16 val ;
  {
  ldv_spin_lock();
  ret = readl((void const volatile *)solo_dev->reg_base + (unsigned long )reg);
  __asm__ volatile ("lfence": : : "memory");
  pci_read_config_word((struct pci_dev const *)solo_dev->pdev, 6, & val);
  __asm__ volatile ("lfence": : : "memory");
  spin_unlock_irqrestore(& solo_dev->reg_io_lock, flags);
  return (ret);
}
}
__inline static void solo_reg_write___5(struct solo_dev *solo_dev , int reg , u32 data )
{
  unsigned long flags ;
  u16 val ;
  {
  ldv_spin_lock();
  writel(data, (void volatile *)solo_dev->reg_base + (unsigned long )reg);
  __asm__ volatile ("sfence": : : "memory");
  pci_read_config_word((struct pci_dev const *)solo_dev->pdev, 6, & val);
  __asm__ volatile ("lfence": : : "memory");
  spin_unlock_irqrestore(& solo_dev->reg_io_lock, flags);
  return;
}
}
int solo_osd_print(struct solo_enc_dev *solo_enc ) ;
void solo_s_jpeg_qp(struct solo_dev *solo_dev , unsigned int ch , unsigned int qp ) ;
int solo_g_jpeg_qp(struct solo_dev *solo_dev , unsigned int ch ) ;
static void solo_capture_config(struct solo_dev *solo_dev )
{
  unsigned long height ;
  unsigned long width ;
  void *buf ;
  int i ;
  {
  solo_reg_write___5(solo_dev, 1024, (u32 )((solo_dev->sdram_size <= 33554432 ? 4718592 : 18874368) | (solo_dev->type == 0 ? 113 : 145)));
  if (solo_dev->type == 1) {
    solo_reg_write___5(solo_dev, 1028, 131620U);
  } else {
    solo_reg_write___5(solo_dev, 1028, 131616U);
  }
  width = (unsigned long )solo_dev->video_hsize;
  height = (unsigned long )solo_dev->video_vsize;
  solo_reg_write___5(solo_dev, 1032, ((u32 )(width / 16UL) | ((u32 )(height / 8UL) << 16U)) | ((u32 )(height / 16UL) << 8U));
  width = (unsigned long )((unsigned int )solo_dev->video_hsize / 2U);
  height = (unsigned long )solo_dev->video_vsize;
  solo_reg_write___5(solo_dev, 1036, ((u32 )(width / 16UL) | ((u32 )(height / 8UL) << 16U)) | ((u32 )(height / 16UL) << 8U));
  width = (unsigned long )((unsigned int )solo_dev->video_hsize / 2U);
  height = (unsigned long )((unsigned int )solo_dev->video_vsize / 2U);
  solo_reg_write___5(solo_dev, 1040, ((u32 )(width / 16UL) | ((u32 )(height / 8UL) << 16U)) | ((u32 )(height / 16UL) << 8U));
  width = (unsigned long )((unsigned int )solo_dev->video_hsize / 3U);
  height = (unsigned long )((unsigned int )solo_dev->video_vsize / 3U);
  solo_reg_write___5(solo_dev, 1044, ((u32 )(width / 16UL) | ((u32 )(height / 8UL) << 16U)) | ((u32 )(height / 16UL) << 8U));
  width = (unsigned long )((unsigned int )solo_dev->video_hsize / 4U);
  height = (unsigned long )((unsigned int )solo_dev->video_vsize / 2U);
  solo_reg_write___5(solo_dev, 1048, ((u32 )(width / 16UL) | ((u32 )(height / 8UL) << 16U)) | ((u32 )(height / 16UL) << 8U));
  width = 1264UL;
  height = 1008UL;
  solo_reg_write___5(solo_dev, 1052, ((u32 )(width / 16UL) | ((u32 )(height / 16UL) << 16U)) | ((u32 )(height / 16UL) << 8U));
  solo_reg_write___5(solo_dev, 1680, 0U);
  solo_reg_write___5(solo_dev, 1684, 72U);
  solo_reg_write___5(solo_dev, 1688, 15761536U);
  if (solo_dev->type == 0) {
    solo_reg_write___5(solo_dev, 1692, 49152U);
  } else {
    solo_reg_write___5(solo_dev, 1692, 114688U);
  }
  buf = kzalloc(solo_dev->type == 0 ? 65536UL : 131072UL, 208U);
  if ((unsigned long )buf == (unsigned long )((void *)0)) {
    return;
  } else {
  }
  i = 0;
  goto ldv_34003;
  ldv_34002:
  solo_p2m_dma(solo_dev, 1, buf, (u32 )((solo_dev->type == 0 ? 65536 : 131072) * i + 4718592),
               solo_dev->type == 0 ? 65536U : 131072U, 0, 0U);
  i = i + 1;
  ldv_34003: ;
  if (solo_dev->nr_chans > i) {
    goto ldv_34002;
  } else {
  }
  kfree((void const *)buf);
  return;
}
}
int solo_osd_print(struct solo_enc_dev *solo_enc )
{
  struct solo_dev *solo_dev ;
  unsigned char *str ;
  u8 *buf ;
  u32 reg ;
  struct font_desc const *vga ;
  struct font_desc const *tmp ;
  unsigned char const *vga_data ;
  int i ;
  int j ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  solo_dev = solo_enc->solo_dev;
  str = (unsigned char *)(& solo_enc->osd_text);
  buf = (u8 *)(& solo_enc->osd_buf);
  tmp = find_font("VGA8x16");
  vga = tmp;
  __ret_warn_once = (unsigned long )vga == (unsigned long )((struct font_desc const *)0);
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    __ret_warn_on = ! __warned;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5994/dscv_tempdir/dscv/ri/43_2a/drivers/staging/media/solo6x10/solo6x10-enc.o.c.prepared",
                         235);
    } else {
    }
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  tmp___3 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___3 != 0L) {
    return (-19);
  } else {
  }
  reg = solo_reg_read___4(solo_dev, 1680);
  if ((unsigned int )*str == 0U) {
    reg = (u32 )(~ (1 << (int )solo_enc->ch)) & reg;
    goto out;
  } else {
  }
  memset((void *)buf, 0, 704UL);
  vga_data = (unsigned char const *)vga->data;
  i = 0;
  goto ldv_34026;
  ldv_34025:
  j = 0;
  goto ldv_34023;
  ldv_34022:
  *(buf + (unsigned long )(((j << 1) | (i & 1)) | ((i & -2) << 4))) = bitrev8((int )*(vga_data + (unsigned long )(((int )*str << 4) | j)));
  j = j + 1;
  ldv_34023: ;
  if (j <= 15) {
    goto ldv_34022;
  } else {
  }
  i = i + 1;
  str = str + 1;
  ldv_34026: ;
  if ((unsigned int )*str != 0U) {
    goto ldv_34025;
  } else {
  }
  solo_p2m_dma(solo_dev, 1, (void *)buf, (u32 )((solo_dev->type == 0 ? 65536 : 131072) * (int )solo_enc->ch + 4718592),
               704U, 0, 0U);
  reg = (u32 )(1 << (int )solo_enc->ch) | reg;
  out:
  solo_reg_write___5(solo_dev, 1680, reg);
  return (0);
}
}
void solo_s_jpeg_qp(struct solo_dev *solo_dev , unsigned int ch , unsigned int qp )
{
  unsigned long flags ;
  unsigned int idx ;
  unsigned int reg ;
  {
  if (ch > 31U || qp > 3U) {
    return;
  } else {
  }
  if (solo_dev->type == 0) {
    return;
  } else {
  }
  if (ch <= 15U) {
    idx = 0U;
    reg = 1652U;
  } else {
    ch = ch - 16U;
    idx = 1U;
    reg = 1656U;
  }
  ch = ch * 2U;
  ldv_spin_lock();
  solo_dev->jpeg_qp[idx] = solo_dev->jpeg_qp[idx] & (u32 )(~ (3 << (int )ch));
  solo_dev->jpeg_qp[idx] = solo_dev->jpeg_qp[idx] | ((qp & 3U) << (int )ch);
  solo_reg_write___5(solo_dev, (int )reg, solo_dev->jpeg_qp[idx]);
  spin_unlock_irqrestore(& solo_dev->jpeg_qp_lock, flags);
  return;
}
}
int solo_g_jpeg_qp(struct solo_dev *solo_dev , unsigned int ch )
{
  int idx ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  if (solo_dev->type == 0) {
    return (2);
  } else {
  }
  __ret_warn_once = ch > 31U;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5994/dscv_tempdir/dscv/ri/43_2a/drivers/staging/media/solo6x10/solo6x10-enc.o.c.prepared",
                         309);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    return (2);
  } else {
  }
  if (ch <= 15U) {
    idx = 0;
  } else {
    ch = ch - 16U;
    idx = 1;
  }
  ch = ch * 2U;
  return ((int )(solo_dev->jpeg_qp[idx] >> (int )ch) & 3);
}
}
static void solo_jpeg_config(struct solo_dev *solo_dev )
{
  struct lock_class_key __key ;
  u32 tmp ;
  int _max1 ;
  int _max2 ;
  int _min1 ;
  int _max1___0 ;
  int _max2___0 ;
  int _min1___0 ;
  int _min2 ;
  int _min2___0 ;
  int _max1___1 ;
  int _max2___1 ;
  int _min1___1 ;
  int _min2___1 ;
  {
  if (solo_dev->type == 0) {
    solo_reg_write___5(solo_dev, 1648, 33686018U);
  } else {
    solo_reg_write___5(solo_dev, 1648, 67305985U);
  }
  spinlock_check(& solo_dev->jpeg_qp_lock);
  __raw_spin_lock_init(& solo_dev->jpeg_qp_lock.ldv_6347.rlock, "&(&solo_dev->jpeg_qp_lock)->rlock",
                       & __key);
  tmp = 2863311530U;
  solo_dev->jpeg_qp[1] = tmp;
  solo_dev->jpeg_qp[0] = tmp;
  solo_reg_write___5(solo_dev, 1652, 2863311530U);
  solo_reg_write___5(solo_dev, 1656, 2863311530U);
  _max1 = solo_dev->nr_chans * 524288;
  _max1___0 = solo_dev->nr_chans * 524288;
  _min1___0 = (solo_dev->sdram_size + (solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)))) + solo_dev->nr_chans * -524288;
  _min2 = 16711680;
  _max2___0 = _min1___0 < _min2 ? _min1___0 : _min2;
  _min1 = solo_dev->sdram_size + ((solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016))) - (_max1___0 > _max2___0 ? _max1___0 : _max2___0));
  _min2___0 = 16711680;
  _max2 = _min1 < _min2___0 ? _min1 : _min2___0;
  _max1___1 = solo_dev->nr_chans * 524288;
  _min1___1 = (solo_dev->sdram_size + (solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)))) + solo_dev->nr_chans * -524288;
  _min2___1 = 16711680;
  _max2___1 = _min1___1 < _min2___1 ? _min1___1 : _min2___1;
  solo_reg_write___5(solo_dev, 1660, ((unsigned int )(_max1 > _max2 ? _max1 : _max2) & 4294901760U) | ((unsigned int )((((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)) + solo_dev->nr_chans * 2621440) + (_max1___1 > _max2___1 ? _max1___1 : _max2___1)) >> 16));
  solo_reg_write___5(solo_dev, 1664, 4294967295U);
  if (solo_dev->type == 1) {
    solo_reg_write___5(solo_dev, 1672, 7740U);
  } else {
  }
  return;
}
}
static void solo_mp4e_config(struct solo_dev *solo_dev )
{
  int i ;
  u32 cfg ;
  int _max1 ;
  int _max2 ;
  int _min1 ;
  int _min2 ;
  int _max1___0 ;
  int _max2___0 ;
  int _min1___0 ;
  int _min2___0 ;
  int _max1___1 ;
  int _max2___1 ;
  int _min1___1 ;
  int _max1___2 ;
  int _max2___2 ;
  int _min1___2 ;
  int _min2___1 ;
  int _min2___2 ;
  {
  _max1 = solo_dev->nr_chans * 524288;
  _min1 = (solo_dev->sdram_size + (solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)))) + solo_dev->nr_chans * -524288;
  _min2 = 16711680;
  _max2 = _min1 < _min2 ? _min1 : _min2;
  solo_reg_write___5(solo_dev, 1552, (u32 )((((long )(_max1 > _max2 ? _max1 : _max2) & 4261347328L) | 33554432L) | (long )((((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)) + solo_dev->nr_chans * 2621440) >> 16)));
  cfg = 33816576U;
  if (solo_dev->type != 0) {
    _max1___0 = solo_dev->nr_chans * 524288;
    _min1___0 = (solo_dev->sdram_size + (solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)))) + solo_dev->nr_chans * -524288;
    _min2___0 = 16711680;
    _max2___0 = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
    cfg = (u32 )(((_max1___0 > _max2___0 ? _max1___0 : _max2___0) >> 24) << 28) | cfg;
    _max1___1 = solo_dev->nr_chans * 524288;
    _max1___2 = solo_dev->nr_chans * 524288;
    _min1___2 = (solo_dev->sdram_size + (solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)))) + solo_dev->nr_chans * -524288;
    _min2___1 = 16711680;
    _max2___2 = _min1___2 < _min2___1 ? _min1___2 : _min2___1;
    _min1___1 = solo_dev->sdram_size + ((solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016))) - (_max1___2 > _max2___2 ? _max1___2 : _max2___2));
    _min2___2 = 16711680;
    _max2___1 = _min1___1 < _min2___2 ? _min1___1 : _min2___2;
    cfg = (u32 )((((_max1___1 > _max2___1 ? _max1___1 : _max2___1) >> 24) & 15) << 20) | cfg;
  } else {
  }
  solo_reg_write___5(solo_dev, 1556, cfg);
  solo_reg_write___5(solo_dev, 1564, 0U);
  solo_reg_write___5(solo_dev, 1568, 0U);
  solo_reg_write___5(solo_dev, 1572, 0U);
  if (solo_dev->type == 1) {
    solo_reg_write___5(solo_dev, 1676, 0U);
  } else {
  }
  solo_reg_write___5(solo_dev, 1576, 0U);
  solo_reg_write___5(solo_dev, 1580, 0U);
  solo_reg_write___5(solo_dev, 1584, solo_dev->type == 0 ? 2313748480U : 2313814016U);
  i = 0;
  goto ldv_34173;
  ldv_34172:
  solo_reg_write___5(solo_dev, (i + 544) * 4, (u32 )((((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)) + i * 1310720) >> 16));
  solo_reg_write___5(solo_dev, (i + 560) * 4, (u32 )((((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)) + (i * 1310720 + 20971520)) >> 16));
  i = i + 1;
  ldv_34173: ;
  if (solo_dev->nr_chans > i) {
    goto ldv_34172;
  } else {
  }
  if (solo_dev->type == 1) {
    solo_reg_write___5(solo_dev, 1588, 262152U);
  } else {
    i = 0;
    goto ldv_34176;
    ldv_34175:
    solo_reg_write___5(solo_dev, (i + 464) * 4, 256U);
    i = i + 1;
    ldv_34176: ;
    if (solo_dev->nr_chans > i) {
      goto ldv_34175;
    } else {
    }
  }
  return;
}
}
int solo_enc_init(struct solo_dev *solo_dev )
{
  int i ;
  {
  solo_capture_config(solo_dev);
  solo_mp4e_config(solo_dev);
  solo_jpeg_config(solo_dev);
  i = 0;
  goto ldv_34183;
  ldv_34182:
  solo_reg_write___5(solo_dev, (i + 272) * 4, 0U);
  solo_reg_write___5(solo_dev, (i + 288) * 4, 0U);
  i = i + 1;
  ldv_34183: ;
  if (solo_dev->nr_chans > i) {
    goto ldv_34182;
  } else {
  }
  return (0);
}
}
void solo_enc_exit(struct solo_dev *solo_dev )
{
  int i ;
  {
  i = 0;
  goto ldv_34190;
  ldv_34189:
  solo_reg_write___5(solo_dev, (i + 272) * 4, 0U);
  solo_reg_write___5(solo_dev, (i + 288) * 4, 0U);
  i = i + 1;
  ldv_34190: ;
  if (solo_dev->nr_chans > i) {
    goto ldv_34189;
  } else {
  }
  return;
}
}
void *ldv_kmem_cache_alloc_164(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
extern struct pv_irq_ops pv_irq_ops ;
__inline static unsigned long arch_local_save_flags(void)
{
  unsigned long __ret ;
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.save_fl.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (804), "i" (12UL));
    ldv_4851: ;
    goto ldv_4851;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (44UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
__inline static void *ERR_PTR(long error )
{
  {
  return ((void *)error);
}
}
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
void *ldv_kmem_cache_alloc_184(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
__inline static struct page *sg_page(struct scatterlist *sg )
{
  long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (98), "i" (12UL));
    ldv_29333: ;
    goto ldv_29333;
  } else {
  }
  tmp___0 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (99), "i" (12UL));
    ldv_29334: ;
    goto ldv_29334;
  } else {
  }
  return ((struct page *)(sg->page_link & 0xfffffffffffffffcUL));
}
}
__inline static void *sg_virt(struct scatterlist *sg )
{
  struct page *tmp ;
  void *tmp___0 ;
  {
  tmp = sg_page(sg);
  tmp___0 = lowmem_page_address((struct page const *)tmp);
  return (tmp___0 + (unsigned long )sg->offset);
}
}
extern struct scatterlist *sg_next(struct scatterlist * ) ;
extern size_t sg_copy_from_buffer(struct scatterlist * , unsigned int , void * ,
                                  size_t ) ;
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0ULL) && *(dev->dma_mask) != 0ULL);
}
}
extern void debug_dma_map_sg(struct device * , struct scatterlist * , int , int ,
                             int ) ;
extern void debug_dma_unmap_sg(struct device * , struct scatterlist * , int , int ) ;
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern struct device x86_dma_fallback_dev ;
__inline static int dma_map_sg_attrs(struct device *dev , struct scatterlist *sg ,
                                     int nents , enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int i ;
  int ents ;
  struct scatterlist *s ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  i = 0;
  s = sg;
  goto ldv_30394;
  ldv_30393:
  tmp___0 = sg_virt(s);
  kmemcheck_mark_initialized(tmp___0, s->length);
  i = i + 1;
  s = sg_next(s);
  ldv_30394: ;
  if (i < nents) {
    goto ldv_30393;
  } else {
  }
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (52), "i" (12UL));
    ldv_30396: ;
    goto ldv_30396;
  } else {
  }
  ents = (*(ops->map_sg))(dev, sg, nents, dir, attrs);
  debug_dma_map_sg(dev, sg, nents, ents, (int )dir);
  return (ents);
}
}
__inline static void dma_unmap_sg_attrs(struct device *dev , struct scatterlist *sg ,
                                        int nents , enum dma_data_direction dir ,
                                        struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (65), "i" (12UL));
    ldv_30405: ;
    goto ldv_30405;
  } else {
  }
  debug_dma_unmap_sg(dev, sg, nents, (int )dir);
  if ((unsigned long )ops->unmap_sg != (unsigned long )((void (*)(struct device * ,
                                                                  struct scatterlist * ,
                                                                  int , enum dma_data_direction ,
                                                                  struct dma_attrs * ))0)) {
    (*(ops->unmap_sg))(dev, sg, nents, dir, attrs);
  } else {
  }
  return;
}
}
__inline static unsigned long dma_alloc_coherent_mask(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  {
  dma_mask = 0UL;
  dma_mask = (unsigned long )dev->coherent_dma_mask;
  if (dma_mask == 0UL) {
    dma_mask = (int )gfp & 1 ? 16777215UL : 4294967295UL;
  } else {
  }
  return (dma_mask);
}
}
__inline static gfp_t dma_alloc_coherent_gfp_flags(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  unsigned long tmp ;
  {
  tmp = dma_alloc_coherent_mask(dev, gfp);
  dma_mask = tmp;
  if ((unsigned long long )dma_mask <= 16777215ULL) {
    gfp = gfp | 1U;
  } else {
  }
  if ((unsigned long long )dma_mask <= 4294967295ULL && (gfp & 1U) == 0U) {
    gfp = gfp | 4U;
  } else {
  }
  return (gfp);
}
}
__inline static void *dma_alloc_attrs(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                      gfp_t gfp , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  void *memory ;
  int tmp___0 ;
  gfp_t tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  gfp = gfp & 4294967288U;
  if ((unsigned long )dev == (unsigned long )((struct device *)0)) {
    dev = & x86_dma_fallback_dev;
  } else {
  }
  tmp___0 = is_device_dma_capable(dev);
  if (tmp___0 == 0) {
    return ((void *)0);
  } else {
  }
  if ((unsigned long )ops->alloc == (unsigned long )((void *(*)(struct device * ,
                                                                size_t , dma_addr_t * ,
                                                                gfp_t , struct dma_attrs * ))0)) {
    return ((void *)0);
  } else {
  }
  tmp___1 = dma_alloc_coherent_gfp_flags(dev, gfp);
  memory = (*(ops->alloc))(dev, size, dma_handle, tmp___1, attrs);
  debug_dma_alloc_coherent(dev, size, *dma_handle, memory);
  return (memory);
}
}
__inline static void dma_free_attrs(struct device *dev , size_t size , void *vaddr ,
                                    dma_addr_t bus , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int __ret_warn_on ;
  unsigned long _flags ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  _flags = arch_local_save_flags();
  tmp___0 = arch_irqs_disabled_flags(_flags);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("./arch/x86/include/asm/dma-mapping.h", 166);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  debug_dma_free_coherent(dev, size, vaddr, bus);
  if ((unsigned long )ops->free != (unsigned long )((void (*)(struct device * , size_t ,
                                                              void * , dma_addr_t ,
                                                              struct dma_attrs * ))0)) {
    (*(ops->free))(dev, size, vaddr, bus, attrs);
  } else {
  }
  return;
}
}
__inline static bool vb2_is_streaming(struct vb2_queue *q )
{
  {
  return ((int )q->streaming != 0);
}
}
__inline static unsigned long vb2_plane_size(struct vb2_buffer *vb , unsigned int plane_no )
{
  {
  if (vb->num_planes > plane_no) {
    return ((unsigned long )vb->v4l2_planes[plane_no].length);
  } else {
  }
  return (0UL);
}
}
__inline static struct sg_table *vb2_dma_sg_plane_desc(struct vb2_buffer *vb , unsigned int plane_no )
{
  void *tmp ;
  {
  tmp = vb2_plane_cookie(vb, plane_no);
  return ((struct sg_table *)tmp);
}
}
extern struct vb2_mem_ops const vb2_dma_sg_memops ;
__inline static void *pci_alloc_consistent(struct pci_dev *hwdev , size_t size , dma_addr_t *dma_handle )
{
  void *tmp ;
  {
  tmp = dma_alloc_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                        size, dma_handle, 32U, (struct dma_attrs *)0);
  return (tmp);
}
}
__inline static void pci_free_consistent(struct pci_dev *hwdev , size_t size , void *vaddr ,
                                         dma_addr_t dma_handle )
{
  {
  dma_free_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                 size, vaddr, dma_handle, (struct dma_attrs *)0);
  return;
}
}
extern struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler * , struct v4l2_ctrl_ops const * ,
                                           u32 , s32 , s32 , u32 , s32 ) ;
__inline static u32 solo_reg_read___5(struct solo_dev *solo_dev , int reg )
{
  unsigned long flags ;
  u32 ret ;
  u16 val ;
  {
  ldv_spin_lock();
  ret = readl((void const volatile *)solo_dev->reg_base + (unsigned long )reg);
  __asm__ volatile ("lfence": : : "memory");
  pci_read_config_word((struct pci_dev const *)solo_dev->pdev, 6, & val);
  __asm__ volatile ("lfence": : : "memory");
  spin_unlock_irqrestore(& solo_dev->reg_io_lock, flags);
  return (ret);
}
}
__inline static void solo_reg_write___6(struct solo_dev *solo_dev , int reg , u32 data )
{
  unsigned long flags ;
  u16 val ;
  {
  ldv_spin_lock();
  writel(data, (void volatile *)solo_dev->reg_base + (unsigned long )reg);
  __asm__ volatile ("sfence": : : "memory");
  pci_read_config_word((struct pci_dev const *)solo_dev->pdev, 6, & val);
  __asm__ volatile ("lfence": : : "memory");
  spin_unlock_irqrestore(& solo_dev->reg_io_lock, flags);
  return;
}
}
__inline static void solo_irq_on___3(struct solo_dev *dev , u32 mask )
{
  {
  dev->irq_mask = dev->irq_mask | mask;
  solo_reg_write___6(dev, 20, dev->irq_mask);
  return;
}
}
__inline static void solo_irq_off___3(struct solo_dev *dev , u32 mask )
{
  {
  dev->irq_mask = dev->irq_mask & ~ mask;
  solo_reg_write___6(dev, 20, dev->irq_mask);
  return;
}
}
static unsigned char const jpeg_header[608U] =
  { 255U, 216U, 255U, 254U,
        0U, 13U, 66U, 108U,
        117U, 101U, 99U, 104U,
        101U, 114U, 114U, 121U,
        32U, 255U, 219U, 0U,
        67U, 0U, 32U, 22U,
        24U, 28U, 24U, 20U,
        32U, 28U, 26U, 28U,
        36U, 34U, 32U, 38U,
        48U, 80U, 52U, 48U,
        44U, 44U, 48U, 98U,
        70U, 74U, 58U, 80U,
        116U, 102U, 122U, 120U,
        114U, 102U, 112U, 110U,
        128U, 144U, 184U, 156U,
        128U, 136U, 174U, 138U,
        110U, 112U, 160U, 218U,
        162U, 174U, 190U, 196U,
        206U, 208U, 206U, 124U,
        154U, 226U, 242U, 224U,
        200U, 240U, 184U, 202U,
        206U, 198U, 255U, 219U,
        0U, 67U, 1U, 34U,
        36U, 36U, 48U, 42U,
        48U, 94U, 52U, 52U,
        94U, 198U, 132U, 112U,
        132U, 198U, 198U, 198U,
        198U, 198U, 198U, 198U,
        198U, 198U, 198U, 198U,
        198U, 198U, 198U, 198U,
        198U, 198U, 198U, 198U,
        198U, 198U, 198U, 198U,
        198U, 198U, 198U, 198U,
        198U, 198U, 198U, 198U,
        198U, 198U, 198U, 198U,
        198U, 198U, 198U, 198U,
        198U, 198U, 198U, 198U,
        198U, 198U, 198U, 198U,
        198U, 198U, 198U, 255U,
        196U, 1U, 162U, 0U,
        0U, 1U, 5U, 1U,
        1U, 1U, 1U, 1U,
        1U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 1U, 2U, 3U,
        4U, 5U, 6U, 7U,
        8U, 9U, 10U, 11U,
        16U, 0U, 2U, 1U,
        3U, 3U, 2U, 4U,
        3U, 5U, 5U, 4U,
        4U, 0U, 0U, 1U,
        125U, 1U, 2U, 3U,
        0U, 4U, 17U, 5U,
        18U, 33U, 49U, 65U,
        6U, 19U, 81U, 97U,
        7U, 34U, 113U, 20U,
        50U, 129U, 145U, 161U,
        8U, 35U, 66U, 177U,
        193U, 21U, 82U, 209U,
        240U, 36U, 51U, 98U,
        114U, 130U, 9U, 10U,
        22U, 23U, 24U, 25U,
        26U, 37U, 38U, 39U,
        40U, 41U, 42U, 52U,
        53U, 54U, 55U, 56U,
        57U, 58U, 67U, 68U,
        69U, 70U, 71U, 72U,
        73U, 74U, 83U, 84U,
        85U, 86U, 87U, 88U,
        89U, 90U, 99U, 100U,
        101U, 102U, 103U, 104U,
        105U, 106U, 115U, 116U,
        117U, 118U, 119U, 120U,
        121U, 122U, 131U, 132U,
        133U, 134U, 135U, 136U,
        137U, 138U, 146U, 147U,
        148U, 149U, 150U, 151U,
        152U, 153U, 154U, 162U,
        163U, 164U, 165U, 166U,
        167U, 168U, 169U, 170U,
        178U, 179U, 180U, 181U,
        182U, 183U, 184U, 185U,
        186U, 194U, 195U, 196U,
        197U, 198U, 199U, 200U,
        201U, 202U, 210U, 211U,
        212U, 213U, 214U, 215U,
        216U, 217U, 218U, 225U,
        226U, 227U, 228U, 229U,
        230U, 231U, 232U, 233U,
        234U, 241U, 242U, 243U,
        244U, 245U, 246U, 247U,
        248U, 249U, 250U, 1U,
        0U, 3U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 0U,
        0U, 0U, 0U, 0U,
        0U, 1U, 2U, 3U,
        4U, 5U, 6U, 7U,
        8U, 9U, 10U, 11U,
        17U, 0U, 2U, 1U,
        2U, 4U, 4U, 3U,
        4U, 7U, 5U, 4U,
        4U, 0U, 1U, 2U,
        119U, 0U, 1U, 2U,
        3U, 17U, 4U, 5U,
        33U, 49U, 6U, 18U,
        65U, 81U, 7U, 97U,
        113U, 19U, 34U, 50U,
        129U, 8U, 20U, 66U,
        145U, 161U, 177U, 193U,
        9U, 35U, 51U, 82U,
        240U, 21U, 98U, 114U,
        209U, 10U, 22U, 36U,
        52U, 225U, 37U, 241U,
        23U, 24U, 25U, 26U,
        38U, 39U, 40U, 41U,
        42U, 53U, 54U, 55U,
        56U, 57U, 58U, 67U,
        68U, 69U, 70U, 71U,
        72U, 73U, 74U, 83U,
        84U, 85U, 86U, 87U,
        88U, 89U, 90U, 99U,
        100U, 101U, 102U, 103U,
        104U, 105U, 106U, 115U,
        116U, 117U, 118U, 119U,
        120U, 121U, 122U, 130U,
        131U, 132U, 133U, 134U,
        135U, 136U, 137U, 138U,
        146U, 147U, 148U, 149U,
        150U, 151U, 152U, 153U,
        154U, 162U, 163U, 164U,
        165U, 166U, 167U, 168U,
        169U, 170U, 178U, 179U,
        180U, 181U, 182U, 183U,
        184U, 185U, 186U, 194U,
        195U, 196U, 197U, 198U,
        199U, 200U, 201U, 202U,
        210U, 211U, 212U, 213U,
        214U, 215U, 216U, 217U,
        218U, 226U, 227U, 228U,
        229U, 230U, 231U, 232U,
        233U, 234U, 242U, 243U,
        244U, 245U, 246U, 247U,
        248U, 249U, 250U, 255U,
        192U, 0U, 17U, 8U,
        0U, 240U, 2U, 192U,
        3U, 1U, 34U, 0U,
        2U, 17U, 1U, 3U,
        17U, 1U, 255U, 218U,
        0U, 12U, 3U, 1U,
        0U, 2U, 17U, 3U,
        17U, 0U, 63U, 0U};
unsigned char const jpeg_dqt[4U][138U] = { { 255U, 219U, 0U, 67U,
            0U, 8U, 6U, 6U,
            7U, 6U, 5U, 8U,
            7U, 7U, 7U, 9U,
            9U, 8U, 10U, 12U,
            20U, 13U, 12U, 11U,
            11U, 12U, 25U, 18U,
            19U, 15U, 20U, 29U,
            26U, 31U, 30U, 29U,
            26U, 28U, 28U, 32U,
            36U, 46U, 39U, 32U,
            34U, 44U, 35U, 28U,
            28U, 40U, 55U, 41U,
            44U, 48U, 49U, 52U,
            52U, 52U, 31U, 39U,
            57U, 61U, 56U, 50U,
            60U, 46U, 51U, 52U,
            50U, 255U, 219U, 0U,
            67U, 1U, 9U, 9U,
            9U, 12U, 11U, 12U,
            24U, 13U, 13U, 24U,
            50U, 33U, 28U, 33U,
            50U, 50U, 50U, 50U,
            50U, 50U, 50U, 50U,
            50U, 50U, 50U, 50U,
            50U, 50U, 50U, 50U,
            50U, 50U, 50U, 50U,
            50U, 50U, 50U, 50U,
            50U, 50U, 50U, 50U,
            50U, 50U, 50U, 50U,
            50U, 50U, 50U, 50U,
            50U, 50U, 50U, 50U,
            50U, 50U, 50U, 50U,
            50U, 50U, 50U, 50U,
            50U, 50U},
   { 255U, 219U, 0U, 67U,
            0U, 16U, 11U, 12U,
            14U, 12U, 10U, 16U,
            14U, 13U, 14U, 18U,
            17U, 16U, 19U, 24U,
            40U, 26U, 24U, 22U,
            22U, 24U, 49U, 35U,
            37U, 29U, 40U, 58U,
            51U, 61U, 60U, 57U,
            51U, 56U, 55U, 64U,
            72U, 92U, 78U, 64U,
            68U, 87U, 69U, 55U,
            56U, 80U, 109U, 81U,
            87U, 95U, 98U, 103U,
            104U, 103U, 62U, 77U,
            113U, 121U, 112U, 100U,
            120U, 92U, 101U, 103U,
            99U, 255U, 219U, 0U,
            67U, 1U, 17U, 18U,
            18U, 24U, 21U, 24U,
            47U, 26U, 26U, 47U,
            99U, 66U, 56U, 66U,
            99U, 99U, 99U, 99U,
            99U, 99U, 99U, 99U,
            99U, 99U, 99U, 99U,
            99U, 99U, 99U, 99U,
            99U, 99U, 99U, 99U,
            99U, 99U, 99U, 99U,
            99U, 99U, 99U, 99U,
            99U, 99U, 99U, 99U,
            99U, 99U, 99U, 99U,
            99U, 99U, 99U, 99U,
            99U, 99U, 99U, 99U,
            99U, 99U, 99U, 99U,
            99U, 99U},
   { 255U, 219U, 0U, 67U,
            0U, 32U, 22U, 24U,
            28U, 24U, 20U, 32U,
            28U, 26U, 28U, 36U,
            34U, 32U, 38U, 48U,
            80U, 52U, 48U, 44U,
            44U, 48U, 98U, 70U,
            74U, 58U, 80U, 116U,
            102U, 122U, 120U, 114U,
            102U, 112U, 110U, 128U,
            144U, 184U, 156U, 128U,
            136U, 174U, 138U, 110U,
            112U, 160U, 218U, 162U,
            174U, 190U, 196U, 206U,
            208U, 206U, 124U, 154U,
            226U, 242U, 224U, 200U,
            240U, 184U, 202U, 206U,
            198U, 255U, 219U, 0U,
            67U, 1U, 34U, 36U,
            36U, 48U, 42U, 48U,
            94U, 52U, 52U, 94U,
            198U, 132U, 112U, 132U,
            198U, 198U, 198U, 198U,
            198U, 198U, 198U, 198U,
            198U, 198U, 198U, 198U,
            198U, 198U, 198U, 198U,
            198U, 198U, 198U, 198U,
            198U, 198U, 198U, 198U,
            198U, 198U, 198U, 198U,
            198U, 198U, 198U, 198U,
            198U, 198U, 198U, 198U,
            198U, 198U, 198U, 198U,
            198U, 198U, 198U, 198U,
            198U, 198U, 198U, 198U,
            198U, 198U},
   { 255U, 219U, 0U, 67U,
            0U, 48U, 33U, 36U,
            42U, 36U, 30U, 48U,
            42U, 39U, 42U, 54U,
            51U, 48U, 57U, 72U,
            120U, 78U, 72U, 66U,
            66U, 72U, 147U, 105U,
            111U, 87U, 120U, 174U,
            153U, 183U, 180U, 171U,
            153U, 168U, 165U, 192U,
            216U, 255U, 234U, 192U,
            204U, 255U, 207U, 165U,
            168U, 240U, 255U, 243U,
            255U, 255U, 255U, 255U,
            255U, 255U, 186U, 231U,
            255U, 255U, 255U, 255U,
            255U, 255U, 255U, 255U,
            255U, 255U, 219U, 0U,
            67U, 1U, 51U, 54U,
            54U, 72U, 63U, 72U,
            141U, 78U, 78U, 141U,
            255U, 198U, 168U, 198U,
            255U, 255U, 255U, 255U,
            255U, 255U, 255U, 255U,
            255U, 255U, 255U, 255U,
            255U, 255U, 255U, 255U,
            255U, 255U, 255U, 255U,
            255U, 255U, 255U, 255U,
            255U, 255U, 255U, 255U,
            255U, 255U, 255U, 255U,
            255U, 255U, 255U, 255U,
            255U, 255U, 255U, 255U,
            255U, 255U, 255U, 255U,
            255U, 255U, 255U, 255U,
            255U, 255U}};
static unsigned char vop_6010_ntsc_d1[32U] =
  { 0U, 0U, 1U, 0U,
        0U, 0U, 1U, 32U,
        2U, 72U, 29U, 192U,
        0U, 64U, 0U, 64U,
        0U, 64U, 0U, 128U,
        0U, 151U, 83U, 4U,
        31U, 76U, 88U, 16U,
        240U, 113U, 24U, 63U};
static unsigned char vop_6010_ntsc_cif[32U] =
  { 0U, 0U, 1U, 0U,
        0U, 0U, 1U, 32U,
        2U, 72U, 29U, 192U,
        0U, 64U, 0U, 64U,
        0U, 64U, 0U, 128U,
        0U, 151U, 83U, 4U,
        31U, 76U, 44U, 16U,
        120U, 81U, 24U, 63U};
static unsigned char vop_6010_pal_d1[32U] =
  { 0U, 0U, 1U, 0U,
        0U, 0U, 1U, 32U,
        2U, 72U, 21U, 192U,
        0U, 64U, 0U, 64U,
        0U, 64U, 0U, 128U,
        0U, 151U, 83U, 4U,
        31U, 76U, 88U, 17U,
        32U, 113U, 24U, 63U};
static unsigned char vop_6010_pal_cif[32U] =
  { 0U, 0U, 1U, 0U,
        0U, 0U, 1U, 32U,
        2U, 72U, 21U, 192U,
        0U, 64U, 0U, 64U,
        0U, 64U, 0U, 128U,
        0U, 151U, 83U, 4U,
        31U, 76U, 44U, 16U,
        144U, 81U, 24U, 63U};
static unsigned char vop_6110_ntsc_d1[24U] =
  { 0U, 0U, 0U, 1U,
        103U, 66U, 0U, 30U,
        154U, 116U, 5U, 129U,
        236U, 128U, 0U, 0U,
        0U, 1U, 104U, 206U,
        50U, 40U, 0U, 0U};
static unsigned char vop_6110_ntsc_cif[24U] =
  { 0U, 0U, 0U, 1U,
        103U, 66U, 0U, 30U,
        154U, 116U, 11U, 15U,
        200U, 0U, 0U, 0U,
        1U, 104U, 206U, 50U,
        40U, 0U, 0U, 0U};
static unsigned char vop_6110_pal_d1[24U] =
  { 0U, 0U, 0U, 1U,
        103U, 66U, 0U, 30U,
        154U, 116U, 5U, 128U,
        147U, 32U, 0U, 0U,
        0U, 1U, 104U, 206U,
        50U, 40U, 0U, 0U};
static unsigned char vop_6110_pal_cif[24U] =
  { 0U, 0U, 0U, 1U,
        103U, 66U, 0U, 30U,
        154U, 116U, 11U, 4U,
        178U, 0U, 0U, 0U,
        1U, 104U, 206U, 50U,
        40U, 0U, 0U, 0U};
static int solo_is_motion_on(struct solo_enc_dev *solo_enc )
{
  struct solo_dev *solo_dev ;
  {
  solo_dev = solo_enc->solo_dev;
  return ((int )(solo_dev->motion_mask >> (int )solo_enc->ch) & 1);
}
}
static int solo_motion_detected(struct solo_enc_dev *solo_enc )
{
  struct solo_dev *solo_dev ;
  unsigned long flags ;
  u32 ch_mask ;
  int ret ;
  u32 tmp ;
  {
  solo_dev = solo_enc->solo_dev;
  ch_mask = (u32 )(1 << (int )solo_enc->ch);
  ret = 0;
  ldv_spin_lock();
  tmp = solo_reg_read___5(solo_dev, 620);
  if ((tmp & ch_mask) != 0U) {
    solo_reg_write___6(solo_dev, 616, ch_mask);
    ret = 1;
  } else {
  }
  spin_unlock_irqrestore(& solo_enc->motion_lock, flags);
  return (ret);
}
}
static void solo_motion_toggle(struct solo_enc_dev *solo_enc , int on )
{
  struct solo_dev *solo_dev ;
  u32 mask ;
  unsigned long flags ;
  {
  solo_dev = solo_enc->solo_dev;
  mask = (u32 )(1 << (int )solo_enc->ch);
  ldv_spin_lock();
  if (on != 0) {
    solo_dev->motion_mask = solo_dev->motion_mask | mask;
  } else {
    solo_dev->motion_mask = solo_dev->motion_mask & ~ mask;
  }
  solo_reg_write___6(solo_dev, 616, mask);
  solo_reg_write___6(solo_dev, 608, (solo_dev->motion_mask << 16) | (solo_dev->type == 0 ? 104U : 136U));
  spin_unlock_irqrestore(& solo_enc->motion_lock, flags);
  return;
}
}
void solo_update_mode(struct solo_enc_dev *solo_enc )
{
  struct solo_dev *solo_dev ;
  int vop_len ;
  unsigned char *vop ;
  int _max1 ;
  int _max2 ;
  size_t __len ;
  void *__ret ;
  u16 fps ;
  u16 interval ;
  size_t __len___0 ;
  void *__ret___0 ;
  int tmp ;
  int tmp___0 ;
  {
  solo_dev = solo_enc->solo_dev;
  solo_enc->interlaced = ((int )solo_enc->mode & 8) != 0;
  _max1 = (int )solo_dev->fps / (int )solo_enc->interval;
  _max2 = 1;
  solo_enc->bw_weight = (u8 )(_max1 > _max2 ? _max1 : _max2);
  if ((unsigned int )solo_enc->mode == 2U) {
    solo_enc->width = (u16 )((int )solo_dev->video_hsize >> 1);
    solo_enc->height = solo_dev->video_vsize;
    if (solo_dev->type == 1) {
      if (solo_dev->video_type == 0U) {
        vop = (unsigned char *)(& vop_6110_ntsc_cif);
        vop_len = 24;
      } else {
        vop = (unsigned char *)(& vop_6110_pal_cif);
        vop_len = 24;
      }
    } else
    if (solo_dev->video_type == 0U) {
      vop = (unsigned char *)(& vop_6010_ntsc_cif);
      vop_len = 32;
    } else {
      vop = (unsigned char *)(& vop_6010_pal_cif);
      vop_len = 32;
    }
  } else {
    solo_enc->width = solo_dev->video_hsize;
    solo_enc->height = (int )solo_dev->video_vsize << 1U;
    solo_enc->bw_weight = (int )solo_enc->bw_weight << 2U;
    if (solo_dev->type == 1) {
      if (solo_dev->video_type == 0U) {
        vop = (unsigned char *)(& vop_6110_ntsc_d1);
        vop_len = 24;
      } else {
        vop = (unsigned char *)(& vop_6110_pal_d1);
        vop_len = 24;
      }
    } else
    if (solo_dev->video_type == 0U) {
      vop = (unsigned char *)(& vop_6010_ntsc_d1);
      vop_len = 32;
    } else {
      vop = (unsigned char *)(& vop_6010_pal_d1);
      vop_len = 32;
    }
  }
  __len = (size_t )vop_len;
  __ret = __builtin_memcpy((void *)(& solo_enc->vop), (void const *)vop, __len);
  if (solo_dev->type == 0) {
    fps = (unsigned int )((u16 )solo_dev->fps) * 1000U;
    interval = (unsigned int )((u16 )solo_enc->interval) * 1000U;
    vop = (unsigned char *)(& solo_enc->vop);
    *(vop + 22UL) = (unsigned char )((int )fps >> 4);
    *(vop + 23UL) = (unsigned char )(((int )((signed char )((int )fps << 4)) | 12) | ((int )((signed char )((int )interval >> 13)) & 3));
    *(vop + 24UL) = (unsigned char )((int )interval >> 5);
    *(vop + 25UL) = (unsigned char )((int )((signed char )((int )interval << 3)) | 4);
  } else {
  }
  solo_enc->vop_len = vop_len;
  vop = (unsigned char *)(& solo_enc->jpeg_header);
  *(vop + 580UL) = (unsigned char )((int )solo_enc->height >> 8);
  *(vop + 581UL) = (unsigned char )solo_enc->height;
  *(vop + 582UL) = (unsigned char )((int )solo_enc->width >> 8);
  *(vop + 583UL) = (unsigned char )solo_enc->width;
  __len___0 = 138UL;
  if (__len___0 > 63UL) {
    tmp = solo_g_jpeg_qp(solo_dev, (unsigned int )solo_enc->ch);
    __ret___0 = memcpy((void *)vop + 17U, (void const *)(& jpeg_dqt) + (unsigned long )tmp,
                         __len___0);
  } else {
    tmp___0 = solo_g_jpeg_qp(solo_dev, (unsigned int )solo_enc->ch);
    __ret___0 = __builtin_memcpy((void *)vop + 17U, (void const *)(& jpeg_dqt) + (unsigned long )tmp___0,
                                 __len___0);
  }
  return;
}
}
static int solo_enc_on(struct solo_enc_dev *solo_enc )
{
  u8 ch ;
  struct solo_dev *solo_dev ;
  u8 interval ;
  {
  ch = solo_enc->ch;
  solo_dev = solo_enc->solo_dev;
  solo_update_mode(solo_enc);
  if ((int )((unsigned short )solo_enc->bw_weight) > (int )solo_dev->enc_bw_remain) {
    return (-16);
  } else {
  }
  solo_enc->sequence = 0U;
  solo_dev->enc_bw_remain = (int )solo_dev->enc_bw_remain - (int )((u16 )solo_enc->bw_weight);
  if ((unsigned int )solo_enc->type == 1U) {
    solo_reg_write___6(solo_dev, ((int )ch + 288) * 4, 1U);
  } else {
  }
  solo_reg_write___6(solo_dev, ((int )ch + 272) * 4, 0U);
  solo_reg_write___6(solo_dev, ((int )ch + 448) * 4, (unsigned int )solo_enc->interlaced != 0U);
  if ((unsigned int )solo_enc->interlaced != 0U) {
    interval = (unsigned int )solo_enc->interval + 255U;
  } else {
    interval = solo_enc->interval;
  }
  solo_reg_write___6(solo_dev, ((int )ch + 512) * 4, (u32 )solo_enc->gop);
  solo_reg_write___6(solo_dev, ((int )ch + 480) * 4, (u32 )solo_enc->qp);
  solo_reg_write___6(solo_dev, ((int )ch + 304) * 4, (u32 )interval);
  solo_reg_write___6(solo_dev, ((int )ch + 528) * 4, (u32 )solo_enc->gop);
  solo_reg_write___6(solo_dev, ((int )ch + 496) * 4, (u32 )solo_enc->qp);
  solo_reg_write___6(solo_dev, ((int )ch + 320) * 4, (u32 )interval);
  solo_reg_write___6(solo_dev, ((int )ch + 272) * 4, (u32 )solo_enc->mode);
  return (0);
}
}
static void solo_enc_off(struct solo_enc_dev *solo_enc )
{
  struct solo_dev *solo_dev ;
  {
  solo_dev = solo_enc->solo_dev;
  solo_dev->enc_bw_remain = (int )solo_dev->enc_bw_remain + (int )((u16 )solo_enc->bw_weight);
  solo_reg_write___6(solo_dev, ((int )solo_enc->ch + 272) * 4, 0U);
  solo_reg_write___6(solo_dev, ((int )solo_enc->ch + 288) * 4, 0U);
  return;
}
}
static int enc_get_mpeg_dma(struct solo_dev *solo_dev , dma_addr_t dma , unsigned int off ,
                            unsigned int size )
{
  int ret ;
  int _max1 ;
  int _max2 ;
  int _min1 ;
  int _min2 ;
  int tmp ;
  int _max1___0 ;
  int _max2___0 ;
  int _min1___0 ;
  int _min2___0 ;
  int _max1___1 ;
  int _max2___1 ;
  int _min1___1 ;
  int _min2___1 ;
  int _max1___2 ;
  int _max2___2 ;
  int _min1___2 ;
  int _min2___2 ;
  int _max1___3 ;
  int _max2___3 ;
  int _min1___3 ;
  int _min2___3 ;
  {
  _max1 = solo_dev->nr_chans * 524288;
  _min1 = (solo_dev->sdram_size + (solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)))) + solo_dev->nr_chans * -524288;
  _min2 = 16711680;
  _max2 = _min1 < _min2 ? _min1 : _min2;
  if ((unsigned int )(_max1 > _max2 ? _max1 : _max2) < off) {
    return (-22);
  } else {
  }
  _max1___0 = solo_dev->nr_chans * 524288;
  _min1___0 = (solo_dev->sdram_size + (solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)))) + solo_dev->nr_chans * -524288;
  _min2___0 = 16711680;
  _max2___0 = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  if (off + size <= (unsigned int )(_max1___0 > _max2___0 ? _max1___0 : _max2___0)) {
    tmp = solo_p2m_dma_t(solo_dev, 0, dma, (unsigned int )(((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)) + solo_dev->nr_chans * 2621440) + off,
                         size, 0, 0U);
    return (tmp);
  } else {
  }
  _max1___1 = solo_dev->nr_chans * 524288;
  _min1___1 = (solo_dev->sdram_size + (solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)))) + solo_dev->nr_chans * -524288;
  _min2___1 = 16711680;
  _max2___1 = _min1___1 < _min2___1 ? _min1___1 : _min2___1;
  ret = solo_p2m_dma_t(solo_dev, 0, dma, (unsigned int )(((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)) + solo_dev->nr_chans * 2621440) + off,
                       (unsigned int )(_max1___1 > _max2___1 ? _max1___1 : _max2___1) - off,
                       0, 0U);
  if (ret == 0) {
    _max1___2 = solo_dev->nr_chans * 524288;
    _min1___2 = (solo_dev->sdram_size + (solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)))) + solo_dev->nr_chans * -524288;
    _min2___2 = 16711680;
    _max2___2 = _min1___2 < _min2___2 ? _min1___2 : _min2___2;
    _max1___3 = solo_dev->nr_chans * 524288;
    _min1___3 = (solo_dev->sdram_size + (solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)))) + solo_dev->nr_chans * -524288;
    _min2___3 = 16711680;
    _max2___3 = _min1___3 < _min2___3 ? _min1___3 : _min2___3;
    ret = solo_p2m_dma_t(solo_dev, 0, ((dma_addr_t )(_max1___3 > _max2___3 ? _max1___3 : _max2___3) + dma) - (dma_addr_t )off,
                         (u32 )(((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)) + solo_dev->nr_chans * 2621440),
                         (size + off) - (unsigned int )(_max1___2 > _max2___2 ? _max1___2 : _max2___2),
                         0, 0U);
  } else {
  }
  return (ret);
}
}
static int solo_send_desc(struct solo_enc_dev *solo_enc , int skip , struct sg_table *vbuf ,
                          int off , int size , unsigned int base , unsigned int base_size )
{
  struct solo_dev *solo_dev ;
  struct scatterlist *sg ;
  int i ;
  int ret ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  struct solo_p2m_desc *desc ;
  dma_addr_t dma ;
  int len ;
  int left ;
  int tmp___3 ;
  long tmp___4 ;
  int _min1 ;
  int _min2 ;
  int tmp___5 ;
  {
  solo_dev = solo_enc->solo_dev;
  __ret_warn_once = size > 200704;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5994/dscv_tempdir/dscv/ri/43_2a/drivers/staging/media/solo6x10/solo6x10-v4l2-enc.o.c.prepared",
                         415);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    return (-22);
  } else {
  }
  solo_enc->desc_count = 1;
  i = 0;
  sg = vbuf->sgl;
  goto ldv_34761;
  ldv_34760:
  left = (int )(base_size - (unsigned int )off);
  tmp___3 = solo_enc->desc_count;
  solo_enc->desc_count = solo_enc->desc_count + 1;
  desc = solo_enc->desc_items + (unsigned long )tmp___3;
  dma = sg->dma_address;
  len = (int )sg->dma_length;
  tmp___4 = ldv__builtin_expect(skip >= len, 0L);
  if (tmp___4 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5994/dscv_tempdir/dscv/ri/43_2a/drivers/staging/media/solo6x10/solo6x10-v4l2-enc.o.c.prepared"),
                         "i" (431), "i" (12UL));
    ldv_34755: ;
    goto ldv_34755;
  } else {
  }
  if (skip != 0) {
    len = len - skip;
    dma = (dma_addr_t )skip + dma;
    size = size - skip;
    skip = 0;
  } else {
  }
  _min1 = len;
  _min2 = size;
  len = _min1 < _min2 ? _min1 : _min2;
  if (len <= left) {
    solo_p2m_fill_desc(desc, 0, dma, base + (unsigned int )off, (u32 )len, 0, 0U);
  } else {
    ret = solo_p2m_dma_t(solo_dev, 0, dma, base + (unsigned int )off, (u32 )left,
                         0, 0U);
    if (ret != 0) {
      return (ret);
    } else {
    }
    ret = solo_p2m_dma_t(solo_dev, 0, (dma_addr_t )left + dma, base, (u32 )(len - left),
                         0, 0U);
    if (ret != 0) {
      return (ret);
    } else {
    }
    solo_enc->desc_count = solo_enc->desc_count - 1;
  }
  size = size - len;
  if (size <= 0) {
    goto ldv_34759;
  } else {
  }
  off = off + len;
  if ((unsigned int )off >= base_size) {
    off = (int )((unsigned int )off - base_size);
  } else {
  }
  if (solo_enc->desc_count >= solo_enc->desc_nelts + -1) {
    ret = solo_p2m_dma_desc(solo_dev, solo_enc->desc_items, solo_enc->desc_dma, solo_enc->desc_count + -1);
    if (ret != 0) {
      return (ret);
    } else {
    }
    solo_enc->desc_count = 1;
  } else {
  }
  i = i + 1;
  sg = sg_next(sg);
  ldv_34761: ;
  if ((unsigned int )i < vbuf->nents) {
    goto ldv_34760;
  } else {
  }
  ldv_34759: ;
  if (solo_enc->desc_count <= 1) {
    return (0);
  } else {
  }
  tmp___5 = solo_p2m_dma_desc(solo_dev, solo_enc->desc_items, solo_enc->desc_dma,
                              solo_enc->desc_count + -1);
  return (tmp___5);
}
}
__inline static u8 vop_type(vop_header const *vh )
{
  {
  return ((unsigned int )((u8 )((*vh)[0] >> 22)) & 3U);
}
}
__inline static u32 vop_mpeg_size(vop_header const *vh )
{
  {
  return ((*vh)[0] & 1048575U);
}
}
__inline static u32 vop_mpeg_offset(vop_header const *vh )
{
  {
  return ((*vh)[2]);
}
}
__inline static u32 vop_jpeg_offset(vop_header const *vh )
{
  {
  return ((*vh)[3]);
}
}
__inline static u32 vop_jpeg_size(vop_header const *vh )
{
  {
  return ((*vh)[4] & 1048575U);
}
}
__inline static u32 vop_sec(vop_header const *vh )
{
  {
  return ((*vh)[5]);
}
}
__inline static u32 vop_usec(vop_header const *vh )
{
  {
  return ((*vh)[6]);
}
}
static int solo_fill_jpeg(struct solo_enc_dev *solo_enc , struct vb2_buffer *vb ,
                          vop_header const *vh )
{
  struct solo_dev *solo_dev ;
  struct sg_table *vbuf ;
  struct sg_table *tmp ;
  int frame_size ;
  int ret ;
  unsigned long tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  int _max1 ;
  int _max2 ;
  int _min1 ;
  int _max1___0 ;
  int _max2___0 ;
  int _min1___0 ;
  int _min2 ;
  int _min2___0 ;
  int _max1___1 ;
  int _max2___1 ;
  int _min1___1 ;
  int _min2___1 ;
  u32 tmp___4 ;
  int _max1___2 ;
  int _max2___2 ;
  int _min1___2 ;
  int _min2___2 ;
  {
  solo_dev = solo_enc->solo_dev;
  tmp = vb2_dma_sg_plane_desc(vb, 0U);
  vbuf = tmp;
  vb->v4l2_buf.flags = vb->v4l2_buf.flags | 8U;
  tmp___0 = vb2_plane_size(vb, 0U);
  tmp___1 = vop_jpeg_size(vh);
  if (tmp___0 < (unsigned long )(tmp___1 + (u32 )solo_enc->jpeg_len)) {
    return (-5);
  } else {
  }
  tmp___2 = vop_jpeg_size(vh);
  frame_size = (int )((tmp___2 + (u32 )solo_enc->jpeg_len) + 4095U) & -4096;
  tmp___3 = vop_jpeg_size(vh);
  vb2_set_plane_payload(vb, 0U, (unsigned long )(tmp___3 + (u32 )solo_enc->jpeg_len));
  dma_map_sg_attrs(& (solo_dev->pdev)->dev, vbuf->sgl, (int )vbuf->nents, 2, (struct dma_attrs *)0);
  _max1 = solo_dev->nr_chans * 524288;
  _max1___0 = solo_dev->nr_chans * 524288;
  _min1___0 = (solo_dev->sdram_size + (solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)))) + solo_dev->nr_chans * -524288;
  _min2 = 16711680;
  _max2___0 = _min1___0 < _min2 ? _min1___0 : _min2;
  _min1 = solo_dev->sdram_size + ((solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016))) - (_max1___0 > _max2___0 ? _max1___0 : _max2___0));
  _min2___0 = 16711680;
  _max2 = _min1 < _min2___0 ? _min1 : _min2___0;
  _max1___1 = solo_dev->nr_chans * 524288;
  _min1___1 = (solo_dev->sdram_size + (solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)))) + solo_dev->nr_chans * -524288;
  _min2___1 = 16711680;
  _max2___1 = _min1___1 < _min2___1 ? _min1___1 : _min2___1;
  tmp___4 = vop_jpeg_offset(vh);
  _max1___2 = solo_dev->nr_chans * 524288;
  _min1___2 = (solo_dev->sdram_size + (solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)))) + solo_dev->nr_chans * -524288;
  _min2___2 = 16711680;
  _max2___2 = _min1___2 < _min2___2 ? _min1___2 : _min2___2;
  ret = solo_send_desc(solo_enc, solo_enc->jpeg_len, vbuf, (int )(tmp___4 + (u32 )((solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016))) - (_max1___2 > _max2___2 ? _max1___2 : _max2___2))),
                       frame_size, (unsigned int )((((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)) + solo_dev->nr_chans * 2621440) + (_max1___1 > _max2___1 ? _max1___1 : _max2___1)),
                       (unsigned int )(_max1 > _max2 ? _max1 : _max2));
  dma_unmap_sg_attrs(& (solo_dev->pdev)->dev, vbuf->sgl, (int )vbuf->nents, 2, (struct dma_attrs *)0);
  sg_copy_from_buffer(vbuf->sgl, vbuf->nents, (void *)(& solo_enc->jpeg_header), (size_t )solo_enc->jpeg_len);
  return (ret);
}
}
static int solo_fill_mpeg(struct solo_enc_dev *solo_enc , struct vb2_buffer *vb ,
                          vop_header const *vh )
{
  struct solo_dev *solo_dev ;
  struct sg_table *vbuf ;
  struct sg_table *tmp ;
  int frame_off ;
  int frame_size ;
  int skip ;
  int ret ;
  unsigned long tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u8 tmp___4 ;
  u32 tmp___5 ;
  int _max1 ;
  int _max2 ;
  int _min1 ;
  int _min2 ;
  u32 tmp___6 ;
  int _max1___0 ;
  int _max2___0 ;
  int _min1___0 ;
  int _min2___0 ;
  u8 tmp___7 ;
  {
  solo_dev = solo_enc->solo_dev;
  tmp = vb2_dma_sg_plane_desc(vb, 0U);
  vbuf = tmp;
  skip = 0;
  tmp___0 = vb2_plane_size(vb, 0U);
  tmp___1 = vop_mpeg_size(vh);
  if (tmp___0 < (unsigned long )tmp___1) {
    return (-5);
  } else {
  }
  vb->v4l2_buf.flags = vb->v4l2_buf.flags & 4294967239U;
  tmp___4 = vop_type(vh);
  if ((unsigned int )tmp___4 == 0U) {
    skip = solo_enc->vop_len;
    vb->v4l2_buf.flags = vb->v4l2_buf.flags | 8U;
    tmp___2 = vop_mpeg_size(vh);
    vb2_set_plane_payload(vb, 0U, (unsigned long )(tmp___2 + (u32 )solo_enc->vop_len));
  } else {
    vb->v4l2_buf.flags = vb->v4l2_buf.flags | 16U;
    tmp___3 = vop_mpeg_size(vh);
    vb2_set_plane_payload(vb, 0U, (unsigned long )tmp___3);
  }
  tmp___5 = vop_mpeg_offset(vh);
  _max1 = solo_dev->nr_chans * 524288;
  _min1 = (solo_dev->sdram_size + (solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)))) + solo_dev->nr_chans * -524288;
  _min2 = 16711680;
  _max2 = _min1 < _min2 ? _min1 : _min2;
  frame_off = (int )(((unsigned long )(tmp___5 + (u32 )(solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)))) + 64UL) % (unsigned long )(_max1 > _max2 ? _max1 : _max2));
  tmp___6 = vop_mpeg_size(vh);
  frame_size = (int )((tmp___6 + (u32 )skip) + 4095U) & -4096;
  dma_map_sg_attrs(& (solo_dev->pdev)->dev, vbuf->sgl, (int )vbuf->nents, 2, (struct dma_attrs *)0);
  _max1___0 = solo_dev->nr_chans * 524288;
  _min1___0 = (solo_dev->sdram_size + (solo_dev->nr_chans * -2621440 - ((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)))) + solo_dev->nr_chans * -524288;
  _min2___0 = 16711680;
  _max2___0 = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  ret = solo_send_desc(solo_enc, skip, vbuf, frame_off, frame_size, (unsigned int )(((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)) + solo_dev->nr_chans * 2621440),
                       (unsigned int )(_max1___0 > _max2___0 ? _max1___0 : _max2___0));
  dma_unmap_sg_attrs(& (solo_dev->pdev)->dev, vbuf->sgl, (int )vbuf->nents, 2, (struct dma_attrs *)0);
  tmp___7 = vop_type(vh);
  if ((unsigned int )tmp___7 == 0U) {
    sg_copy_from_buffer(vbuf->sgl, vbuf->nents, (void *)(& solo_enc->vop), (size_t )solo_enc->vop_len);
  } else {
  }
  return (ret);
}
}
static int solo_enc_fillbuf(struct solo_enc_dev *solo_enc , struct vb2_buffer *vb ,
                            struct solo_enc_buf *enc_buf )
{
  vop_header const *vh ;
  int ret ;
  int tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  {
  vh = enc_buf->vh;
  vb->v4l2_buf.flags = vb->v4l2_buf.flags & 4294770687U;
  tmp = solo_is_motion_on(solo_enc);
  if (tmp != 0) {
    vb->v4l2_buf.flags = vb->v4l2_buf.flags | 65536U;
    if (enc_buf->motion != 0) {
      vb->v4l2_buf.flags = vb->v4l2_buf.flags | 131072U;
    } else {
    }
  } else {
  }
  switch (solo_enc->fmt) {
  case 877088845U: ;
  case 875967048U:
  ret = solo_fill_mpeg(solo_enc, vb, vh);
  goto ldv_34905;
  default:
  ret = solo_fill_jpeg(solo_enc, vb, vh);
  goto ldv_34905;
  }
  ldv_34905: ;
  if (ret == 0) {
    tmp___0 = solo_enc->sequence;
    solo_enc->sequence = solo_enc->sequence + 1U;
    vb->v4l2_buf.sequence = tmp___0;
    tmp___1 = vop_sec(vh);
    vb->v4l2_buf.timestamp.tv_sec = (__kernel_time_t )tmp___1;
    tmp___2 = vop_usec(vh);
    vb->v4l2_buf.timestamp.tv_usec = (__kernel_suseconds_t )tmp___2;
  } else {
  }
  vb2_buffer_done(vb, ret != 0 ? 6 : 5);
  return (ret);
}
}
static void solo_enc_handle_one(struct solo_enc_dev *solo_enc , struct solo_enc_buf *enc_buf )
{
  struct solo_vb2_buf *vb ;
  unsigned long flags ;
  int tmp ;
  struct list_head const *__mptr ;
  {
  mutex_lock_nested(& solo_enc->lock, 0U);
  if ((unsigned int )solo_enc->type != (unsigned int )enc_buf->type) {
    goto unlock;
  } else {
  }
  ldv_spin_lock();
  tmp = list_empty((struct list_head const *)(& solo_enc->vidq_active));
  if (tmp != 0) {
    spin_unlock_irqrestore(& solo_enc->av_lock, flags);
    goto unlock;
  } else {
  }
  __mptr = (struct list_head const *)solo_enc->vidq_active.next;
  vb = (struct solo_vb2_buf *)__mptr + 0xfffffffffffffc60UL;
  list_del(& vb->list);
  spin_unlock_irqrestore(& solo_enc->av_lock, flags);
  solo_enc_fillbuf(solo_enc, & vb->vb, enc_buf);
  unlock:
  mutex_unlock(& solo_enc->lock);
  return;
}
}
void solo_enc_v4l2_isr(struct solo_dev *solo_dev )
{
  {
  __wake_up(& solo_dev->ring_thread_wait, 1U, 0, (void *)0);
  return;
}
}
static void solo_handle_ring(struct solo_dev *solo_dev )
{
  struct solo_enc_dev *solo_enc ;
  struct solo_enc_buf enc_buf ;
  u32 mpeg_current ;
  u32 off ;
  u8 ch ;
  u8 cur_q ;
  u32 tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  {
  ldv_34930:
  tmp = solo_reg_read___5(solo_dev, 1644);
  cur_q = (u8 )tmp;
  if ((int )solo_dev->enc_idx == (int )cur_q) {
    goto ldv_34928;
  } else {
  }
  mpeg_current = solo_reg_read___5(solo_dev, ((int )solo_dev->enc_idx + 320) * 8);
  solo_dev->enc_idx = (u8 )(((int )solo_dev->enc_idx + 1) % 16);
  ch = (unsigned int )((u8 )(mpeg_current >> 24)) & 31U;
  off = mpeg_current & 16777215U;
  if ((unsigned int )ch > 15U) {
    ch = (unsigned int )ch + 240U;
    enc_buf.type = 1;
  } else {
    enc_buf.type = 0;
  }
  solo_enc = solo_dev->v4l2_enc[(int )ch];
  if ((unsigned long )solo_enc == (unsigned long )((struct solo_enc_dev *)0)) {
    dev_err((struct device const *)(& (solo_dev->pdev)->dev), "Got spurious packet for channel %d\n",
            (int )ch);
    goto ldv_34929;
  } else {
  }
  tmp___0 = enc_get_mpeg_dma(solo_dev, solo_dev->vh_dma, off, 64U);
  if (tmp___0 != 0) {
    goto ldv_34929;
  } else {
  }
  enc_buf.vh = (vop_header const *)solo_dev->vh_buf;
  tmp___1 = vop_mpeg_offset(enc_buf.vh);
  if (tmp___1 != (u32 )(((solo_dev->type == 0 ? 7405568 : 9502720) + (solo_dev->sdram_size <= 33554432 ? 5898240 : 20054016)) + solo_dev->nr_chans * 2621440) + off) {
    goto ldv_34929;
  } else {
  }
  tmp___2 = solo_motion_detected(solo_enc);
  if (tmp___2 != 0) {
    enc_buf.motion = 1;
  } else {
    enc_buf.motion = 0;
  }
  solo_enc_handle_one(solo_enc, & enc_buf);
  ldv_34929: ;
  goto ldv_34930;
  ldv_34928: ;
  return;
}
}
static int solo_ring_thread(void *data )
{
  struct solo_dev *solo_dev ;
  wait_queue_t wait ;
  struct task_struct *tmp ;
  long timeout ;
  long tmp___0 ;
  bool tmp___1 ;
  {
  solo_dev = (struct solo_dev *)data;
  tmp = get_current();
  wait.flags = 0U;
  wait.private = (void *)tmp;
  wait.func = & default_wake_function;
  wait.task_list.next = (struct list_head *)0;
  wait.task_list.prev = (struct list_head *)0;
  set_freezable();
  add_wait_queue(& solo_dev->ring_thread_wait, & wait);
  ldv_34938:
  tmp___0 = schedule_timeout_interruptible(250L);
  timeout = tmp___0;
  if (timeout == -512L) {
    goto ldv_34937;
  } else {
    tmp___1 = kthread_should_stop();
    if ((int )tmp___1) {
      goto ldv_34937;
    } else {
    }
  }
  solo_irq_off___3(solo_dev, 1U);
  solo_handle_ring(solo_dev);
  solo_irq_on___3(solo_dev, 1U);
  try_to_freeze();
  goto ldv_34938;
  ldv_34937:
  remove_wait_queue(& solo_dev->ring_thread_wait, & wait);
  return (0);
}
}
static int solo_enc_queue_setup(struct vb2_queue *q , struct v4l2_format const *fmt ,
                                unsigned int *num_buffers , unsigned int *num_planes ,
                                unsigned int *sizes , void **alloc_ctxs )
{
  {
  *sizes = 200704U;
  *num_planes = 1U;
  if (*num_buffers <= 1U) {
    *num_buffers = 2U;
  } else {
  }
  return (0);
}
}
static void solo_enc_buf_queue(struct vb2_buffer *vb )
{
  struct vb2_queue *vq ;
  struct solo_enc_dev *solo_enc ;
  void *tmp ;
  struct solo_vb2_buf *solo_vb ;
  struct vb2_buffer const *__mptr ;
  {
  vq = vb->vb2_queue;
  tmp = vb2_get_drv_priv(vq);
  solo_enc = (struct solo_enc_dev *)tmp;
  __mptr = (struct vb2_buffer const *)vb;
  solo_vb = (struct solo_vb2_buf *)__mptr;
  spin_lock(& solo_enc->av_lock);
  list_add_tail(& solo_vb->list, & solo_enc->vidq_active);
  spin_unlock(& solo_enc->av_lock);
  return;
}
}
static int solo_ring_start(struct solo_dev *solo_dev )
{
  struct task_struct *__k ;
  struct task_struct *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  int err ;
  long tmp___2 ;
  bool tmp___3 ;
  {
  tmp = kthread_create_on_node(& solo_ring_thread, (void *)solo_dev, -1, "solo6x10_ring");
  __k = tmp;
  tmp___0 = IS_ERR((void const *)__k);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    wake_up_process(__k);
  } else {
  }
  solo_dev->ring_thread = __k;
  tmp___3 = IS_ERR((void const *)solo_dev->ring_thread);
  if ((int )tmp___3) {
    tmp___2 = PTR_ERR((void const *)solo_dev->ring_thread);
    err = (int )tmp___2;
    solo_dev->ring_thread = (struct task_struct *)0;
    return (err);
  } else {
  }
  solo_irq_on___3(solo_dev, 1U);
  return (0);
}
}
static void solo_ring_stop(struct solo_dev *solo_dev )
{
  {
  if ((unsigned long )solo_dev->ring_thread != (unsigned long )((struct task_struct *)0)) {
    kthread_stop(solo_dev->ring_thread);
    solo_dev->ring_thread = (struct task_struct *)0;
  } else {
  }
  solo_irq_off___3(solo_dev, 1U);
  return;
}
}
static int solo_enc_start_streaming(struct vb2_queue *q , unsigned int count )
{
  struct solo_enc_dev *solo_enc ;
  void *tmp ;
  int ret ;
  int tmp___0 ;
  {
  tmp = vb2_get_drv_priv(q);
  solo_enc = (struct solo_enc_dev *)tmp;
  ret = solo_enc_on(solo_enc);
  if (ret != 0) {
    return (ret);
  } else {
  }
  tmp___0 = solo_ring_start(solo_enc->solo_dev);
  return (tmp___0);
}
}
static void solo_enc_stop_streaming(struct vb2_queue *q )
{
  struct solo_enc_dev *solo_enc ;
  void *tmp ;
  {
  tmp = vb2_get_drv_priv(q);
  solo_enc = (struct solo_enc_dev *)tmp;
  solo_enc_off(solo_enc);
  INIT_LIST_HEAD(& solo_enc->vidq_active);
  solo_ring_stop(solo_enc->solo_dev);
  return;
}
}
static struct vb2_ops solo_enc_video_qops =
     {& solo_enc_queue_setup, & vb2_ops_wait_prepare, & vb2_ops_wait_finish, 0, 0, 0,
    0, & solo_enc_start_streaming, & solo_enc_stop_streaming, & solo_enc_buf_queue};
static int solo_enc_querycap(struct file *file , void *priv , struct v4l2_capability *cap )
{
  struct solo_enc_dev *solo_enc ;
  void *tmp ;
  struct solo_dev *solo_dev ;
  char const *tmp___0 ;
  {
  tmp = video_drvdata(file);
  solo_enc = (struct solo_enc_dev *)tmp;
  solo_dev = solo_enc->solo_dev;
  strcpy((char *)(& cap->driver), "solo6x10");
  snprintf((char *)(& cap->card), 32UL, "Softlogic 6x10 Enc %d", (int )solo_enc->ch);
  tmp___0 = pci_name((struct pci_dev const *)solo_dev->pdev);
  snprintf((char *)(& cap->bus_info), 32UL, "PCI:%s", tmp___0);
  cap->device_caps = 83886081U;
  cap->capabilities = cap->device_caps | 2147483648U;
  return (0);
}
}
static int solo_enc_enum_input(struct file *file , void *priv , struct v4l2_input *input )
{
  struct solo_enc_dev *solo_enc ;
  void *tmp ;
  struct solo_dev *solo_dev ;
  int tmp___0 ;
  {
  tmp = video_drvdata(file);
  solo_enc = (struct solo_enc_dev *)tmp;
  solo_dev = solo_enc->solo_dev;
  if (input->index != 0U) {
    return (-22);
  } else {
  }
  snprintf((char *)(& input->name), 32UL, "Encoder %d", (int )solo_enc->ch + 1);
  input->type = 2U;
  input->std = (solo_enc->vfd)->tvnorms;
  tmp___0 = tw28_get_video_status(solo_dev, (int )solo_enc->ch);
  if (tmp___0 == 0) {
    input->status = 2U;
  } else {
  }
  return (0);
}
}
static int solo_enc_set_input(struct file *file , void *priv , unsigned int index )
{
  {
  if (index != 0U) {
    return (-22);
  } else {
  }
  return (0);
}
}
static int solo_enc_get_input(struct file *file , void *priv , unsigned int *index )
{
  {
  *index = 0U;
  return (0);
}
}
static int solo_enc_enum_fmt_cap(struct file *file , void *priv , struct v4l2_fmtdesc *f )
{
  struct solo_enc_dev *solo_enc ;
  void *tmp ;
  int dev_type ;
  {
  tmp = video_drvdata(file);
  solo_enc = (struct solo_enc_dev *)tmp;
  dev_type = (solo_enc->solo_dev)->type;
  switch (f->index) {
  case 0U: ;
  switch (dev_type) {
  case 0:
  f->pixelformat = 877088845U;
  strcpy((char *)(& f->description), "MPEG-4 part 2");
  goto ldv_35008;
  case 1:
  f->pixelformat = 875967048U;
  strcpy((char *)(& f->description), "H.264");
  goto ldv_35008;
  }
  ldv_35008: ;
  goto ldv_35010;
  case 1U:
  f->pixelformat = 1196444237U;
  strcpy((char *)(& f->description), "MJPEG");
  goto ldv_35010;
  default: ;
  return (-22);
  }
  ldv_35010:
  f->flags = 1U;
  return (0);
}
}
__inline static int solo_valid_pixfmt(u32 pixfmt , int dev_type )
{
  {
  return (((pixfmt == 875967048U && dev_type == 1) || (pixfmt == 877088845U && dev_type == 0)) || pixfmt == 1196444237U ? 0 : -22);
}
}
static int solo_enc_try_fmt_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct solo_enc_dev *solo_enc ;
  void *tmp ;
  struct solo_dev *solo_dev ;
  struct v4l2_pix_format *pix ;
  int tmp___0 ;
  {
  tmp = video_drvdata(file);
  solo_enc = (struct solo_enc_dev *)tmp;
  solo_dev = solo_enc->solo_dev;
  pix = & f->fmt.pix;
  tmp___0 = solo_valid_pixfmt(pix->pixelformat, solo_dev->type);
  if (tmp___0 != 0) {
    return (-22);
  } else {
  }
  if (pix->width < (__u32 )solo_dev->video_hsize || pix->height < (__u32 )((int )solo_dev->video_vsize << 1)) {
    pix->width = (__u32 )((int )solo_dev->video_hsize >> 1);
    pix->height = (__u32 )solo_dev->video_vsize;
  } else {
    pix->width = (__u32 )solo_dev->video_hsize;
    pix->height = (__u32 )((int )solo_dev->video_vsize << 1);
  }
  switch (pix->field) {
  case 1U: ;
  case 4U: ;
  goto ldv_35027;
  case 0U: ;
  default:
  pix->field = 4U;
  goto ldv_35027;
  }
  ldv_35027:
  pix->colorspace = 1U;
  pix->sizeimage = 200704U;
  pix->bytesperline = 0U;
  pix->priv = 0U;
  return (0);
}
}
static int solo_enc_set_fmt_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct solo_enc_dev *solo_enc ;
  void *tmp ;
  struct solo_dev *solo_dev ;
  struct v4l2_pix_format *pix ;
  int ret ;
  bool tmp___0 ;
  {
  tmp = video_drvdata(file);
  solo_enc = (struct solo_enc_dev *)tmp;
  solo_dev = solo_enc->solo_dev;
  pix = & f->fmt.pix;
  tmp___0 = vb2_is_busy(& solo_enc->vidq);
  if ((int )tmp___0) {
    return (-16);
  } else {
  }
  ret = solo_enc_try_fmt_cap(file, priv, f);
  if (ret != 0) {
    return (ret);
  } else {
  }
  if (pix->width == (__u32 )solo_dev->video_hsize) {
    solo_enc->mode = 9U;
  } else {
    solo_enc->mode = 2U;
  }
  solo_enc->fmt = pix->pixelformat;
  solo_update_mode(solo_enc);
  return (0);
}
}
static int solo_enc_get_fmt_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct solo_enc_dev *solo_enc ;
  void *tmp ;
  struct v4l2_pix_format *pix ;
  {
  tmp = video_drvdata(file);
  solo_enc = (struct solo_enc_dev *)tmp;
  pix = & f->fmt.pix;
  pix->width = (__u32 )solo_enc->width;
  pix->height = (__u32 )solo_enc->height;
  pix->pixelformat = solo_enc->fmt;
  pix->field = (unsigned int )solo_enc->interlaced != 0U ? 4U : 1U;
  pix->sizeimage = 200704U;
  pix->colorspace = 1U;
  pix->priv = 0U;
  return (0);
}
}
static int solo_enc_g_std(struct file *file , void *priv , v4l2_std_id *i )
{
  struct solo_enc_dev *solo_enc ;
  void *tmp ;
  struct solo_dev *solo_dev ;
  {
  tmp = video_drvdata(file);
  solo_enc = (struct solo_enc_dev *)tmp;
  solo_dev = solo_enc->solo_dev;
  if (solo_dev->video_type == 0U) {
    *i = 4096ULL;
  } else {
    *i = 255ULL;
  }
  return (0);
}
}
static int solo_enc_s_std(struct file *file , void *priv , v4l2_std_id std )
{
  struct solo_enc_dev *solo_enc ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = video_drvdata(file);
  solo_enc = (struct solo_enc_dev *)tmp;
  tmp___0 = solo_set_video_type(solo_enc->solo_dev, (std & 16713471ULL) != 0ULL);
  return (tmp___0);
}
}
static int solo_enum_framesizes(struct file *file , void *priv , struct v4l2_frmsizeenum *fsize )
{
  struct solo_enc_dev *solo_enc ;
  void *tmp ;
  struct solo_dev *solo_dev ;
  int tmp___0 ;
  {
  tmp = video_drvdata(file);
  solo_enc = (struct solo_enc_dev *)tmp;
  solo_dev = solo_enc->solo_dev;
  tmp___0 = solo_valid_pixfmt(fsize->pixel_format, solo_dev->type);
  if (tmp___0 != 0) {
    return (-22);
  } else {
  }
  switch (fsize->index) {
  case 0U:
  fsize->ldv_25412.discrete.width = (__u32 )((int )solo_dev->video_hsize >> 1);
  fsize->ldv_25412.discrete.height = (__u32 )solo_dev->video_vsize;
  goto ldv_35067;
  case 1U:
  fsize->ldv_25412.discrete.width = (__u32 )solo_dev->video_hsize;
  fsize->ldv_25412.discrete.height = (__u32 )((int )solo_dev->video_vsize << 1);
  goto ldv_35067;
  default: ;
  return (-22);
  }
  ldv_35067:
  fsize->type = 1U;
  return (0);
}
}
static int solo_enum_frameintervals(struct file *file , void *priv , struct v4l2_frmivalenum *fintv )
{
  struct solo_enc_dev *solo_enc ;
  void *tmp ;
  struct solo_dev *solo_dev ;
  int tmp___0 ;
  {
  tmp = video_drvdata(file);
  solo_enc = (struct solo_enc_dev *)tmp;
  solo_dev = solo_enc->solo_dev;
  tmp___0 = solo_valid_pixfmt(fintv->pixel_format, solo_dev->type);
  if (tmp___0 != 0) {
    return (-22);
  } else {
  }
  if (fintv->index != 0U) {
    return (-22);
  } else {
  }
  if ((fintv->width != (__u32 )((int )solo_dev->video_hsize >> 1) || fintv->height != (__u32 )solo_dev->video_vsize) && (fintv->width != (__u32 )solo_dev->video_hsize || fintv->height != (__u32 )((int )solo_dev->video_vsize << 1))) {
    return (-22);
  } else {
  }
  fintv->type = 3U;
  fintv->ldv_25431.stepwise.min.numerator = 1U;
  fintv->ldv_25431.stepwise.min.denominator = (__u32 )solo_dev->fps;
  fintv->ldv_25431.stepwise.max.numerator = 15U;
  fintv->ldv_25431.stepwise.max.denominator = (__u32 )solo_dev->fps;
  fintv->ldv_25431.stepwise.step.numerator = 1U;
  fintv->ldv_25431.stepwise.step.denominator = (__u32 )solo_dev->fps;
  return (0);
}
}
static int solo_g_parm(struct file *file , void *priv , struct v4l2_streamparm *sp )
{
  struct solo_enc_dev *solo_enc ;
  void *tmp ;
  struct v4l2_captureparm *cp ;
  {
  tmp = video_drvdata(file);
  solo_enc = (struct solo_enc_dev *)tmp;
  cp = & sp->parm.capture;
  cp->capability = 4096U;
  cp->timeperframe.numerator = (__u32 )solo_enc->interval;
  cp->timeperframe.denominator = (__u32 )(solo_enc->solo_dev)->fps;
  cp->capturemode = 0U;
  cp->readbuffers = 2U;
  return (0);
}
}
__inline static int calc_interval(u8 fps , u32 n , u32 d )
{
  unsigned int _min1 ;
  u32 _min2 ;
  {
  if (n == 0U || d == 0U) {
    return (1);
  } else {
  }
  if ((u32 )fps == d) {
    return ((int )n);
  } else {
  }
  n = (u32 )fps * n;
  _min1 = 15U;
  _min2 = n / d + (u32 )(n % d >= (u32 )((int )fps >> 1));
  return ((int )(_min1 < _min2 ? _min1 : _min2));
}
}
static int solo_s_parm(struct file *file , void *priv , struct v4l2_streamparm *sp )
{
  struct solo_enc_dev *solo_enc ;
  void *tmp ;
  struct v4l2_fract *t ;
  u8 fps ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = video_drvdata(file);
  solo_enc = (struct solo_enc_dev *)tmp;
  t = & sp->parm.capture.timeperframe;
  fps = (solo_enc->solo_dev)->fps;
  tmp___0 = vb2_is_streaming(& solo_enc->vidq);
  if ((int )tmp___0) {
    return (-16);
  } else {
  }
  tmp___1 = calc_interval((int )fps, t->numerator, t->denominator);
  solo_enc->interval = (u8 )tmp___1;
  solo_update_mode(solo_enc);
  tmp___2 = solo_g_parm(file, priv, sp);
  return (tmp___2);
}
}
static long solo_enc_default(struct file *file , void *fh , bool valid_prio , unsigned int cmd ,
                             void *arg )
{
  struct solo_enc_dev *solo_enc ;
  void *tmp ;
  struct solo_dev *solo_dev ;
  struct solo_motion_thresholds *thresholds ;
  int tmp___0 ;
  {
  tmp = video_drvdata(file);
  solo_enc = (struct solo_enc_dev *)tmp;
  solo_dev = solo_enc->solo_dev;
  thresholds = (struct solo_motion_thresholds *)arg;
  switch (cmd) {
  case 2412926656U:
  *thresholds = solo_enc->motion_thresholds;
  return (0L);
  case 1339184833U: ;
  if (! valid_prio) {
    return (-16L);
  } else {
  }
  solo_enc->motion_thresholds = *thresholds;
  if ((int )solo_enc->motion_enabled && ! solo_enc->motion_global) {
    tmp___0 = solo_set_motion_block(solo_dev, (int )solo_enc->ch, (struct solo_motion_thresholds const *)(& solo_enc->motion_thresholds));
    return ((long )tmp___0);
  } else {
  }
  return (0L);
  default: ;
  return (-25L);
  }
}
}
static int solo_s_ctrl___0(struct v4l2_ctrl *ctrl )
{
  struct solo_enc_dev *solo_enc ;
  struct v4l2_ctrl_handler const *__mptr ;
  struct solo_dev *solo_dev ;
  int err ;
  int tmp ;
  int tmp___0 ;
  {
  __mptr = (struct v4l2_ctrl_handler const *)ctrl->handler;
  solo_enc = (struct solo_enc_dev *)__mptr + 0xfffffffffffffff8UL;
  solo_dev = solo_enc->solo_dev;
  switch (ctrl->id) {
  case 9963776U: ;
  case 9963777U: ;
  case 9963778U: ;
  case 9963779U: ;
  case 9963803U:
  tmp = tw28_set_ctrl_val(solo_dev, ctrl->id, (int )solo_enc->ch, ctrl->ldv_34518.val);
  return (tmp);
  case 10029515U:
  solo_enc->gop = (u8 )ctrl->ldv_34518.val;
  return (0);
  case 10025217U:
  solo_enc->motion_thresh = (u16 )ctrl->ldv_34518.val;
  if (! solo_enc->motion_global || ! solo_enc->motion_enabled) {
    return (0);
  } else {
  }
  tmp___0 = solo_set_motion_threshold(solo_dev, (int )solo_enc->ch, (int )((u16 )ctrl->ldv_34518.val));
  return (tmp___0);
  case 10025216U:
  solo_enc->motion_global = ctrl->ldv_34518.val == 1;
  solo_enc->motion_enabled = ctrl->ldv_34518.val > 0;
  if (ctrl->ldv_34518.val != 0) {
    if ((int )solo_enc->motion_global) {
      solo_set_motion_threshold(solo_dev, (int )solo_enc->ch, (int )solo_enc->motion_thresh);
    } else {
      solo_set_motion_block(solo_dev, (int )solo_enc->ch, (struct solo_motion_thresholds const *)(& solo_enc->motion_thresholds));
    }
  } else {
  }
  solo_motion_toggle(solo_enc, ctrl->ldv_34518.val);
  return (0);
  case 10025219U:
  strcpy((char *)(& solo_enc->osd_text), (char const *)ctrl->ldv_34518.string);
  err = solo_osd_print(solo_enc);
  return (err);
  default: ;
  return (-22);
  }
  return (0);
}
}
static struct v4l2_file_operations const solo_enc_fops =
     {& __this_module, & vb2_fop_read, 0, & vb2_fop_poll, 0, & video_ioctl2, 0, 0, & vb2_fop_mmap,
    & v4l2_fh_open, & vb2_fop_release};
static struct v4l2_ioctl_ops const solo_enc_ioctl_ops =
     {& solo_enc_querycap, 0, 0, & solo_enc_enum_fmt_cap, 0, 0, 0, 0, 0, & solo_enc_get_fmt_cap,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & solo_enc_set_fmt_cap, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, & solo_enc_try_fmt_cap, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vb2_ioctl_reqbufs,
    & vb2_ioctl_querybuf, & vb2_ioctl_qbuf, 0, & vb2_ioctl_dqbuf, 0, 0, 0, 0, 0, & vb2_ioctl_streamon,
    & vb2_ioctl_streamoff, & solo_enc_g_std, & solo_enc_s_std, 0, & solo_enc_enum_input,
    & solo_enc_get_input, & solo_enc_set_input, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & solo_g_parm, & solo_s_parm,
    0, 0, 0, 0, 0, 0, & v4l2_ctrl_log_status, 0, 0, 0, 0, & solo_enum_framesizes,
    & solo_enum_frameintervals, 0, 0, 0, 0, 0, 0, 0, & v4l2_ctrl_subscribe_event,
    & v4l2_event_unsubscribe, & solo_enc_default};
static struct video_device const solo_enc_template =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {.alsa = {0U, 0U, 0U}}}, & solo_enc_fops,
    {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, {{{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}},
                                           {{0, 0}, 0UL, 0, 0, 0UL, 0, 0, 0, {(char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0},
                                            {0, {0, 0}, 0, 0, 0UL}}, 0, 0}, (unsigned char)0,
            (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0},
     0, 0, {{0}, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 0, 0,
            {0, {0, 0}, 0, 0, 0UL}}, 0, 0, 0, 0, {{0}, (unsigned char)0, (unsigned char)0,
                                                  (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0,
                                                  (_Bool)0, (_Bool)0, (_Bool)0, {{{{{0U}},
                                                                                   0U,
                                                                                   0U,
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}}}},
                                                  {0, 0}, {0U, {{{{{{0U}}, 0U, 0U,
                                                                   0, {0, {0, 0},
                                                                       0, 0, 0UL}}}},
                                                                {0, 0}}}, 0, (_Bool)0,
                                                  (_Bool)0, {{0, 0}, 0UL, 0, 0, 0UL,
                                                             0, 0, 0, {(char)0, (char)0,
                                                                       (char)0, (char)0,
                                                                       (char)0, (char)0,
                                                                       (char)0, (char)0,
                                                                       (char)0, (char)0,
                                                                       (char)0, (char)0,
                                                                       (char)0, (char)0,
                                                                       (char)0, (char)0},
                                                             {0, {0, 0}, 0, 0, 0UL}},
                                                  0UL, {{0L}, {0, 0}, 0, {0, {0, 0},
                                                                          0, 0, 0UL}},
                                                  {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0},
                                                                          0, 0, 0UL}}}},
                                                   {0, 0}}, {0}, {0}, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  (unsigned char)0, (unsigned char)0,
                                                  0, 0, 0, 0, 0UL, 0UL, 0UL, 0UL,
                                                  0, 0, 0}, 0, 0, 0, 0, 0ULL, 0UL,
     0, {0, 0}, 0, 0, {0, 0}, 0, {0}, 0U, 0U, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0,
                                                                     0, 0UL}}}}, {0,
                                                                                  0},
     {0, {0, 0}, {{0}}}, 0, 0, 0, 0, (_Bool)0, (_Bool)0}, 0, 0, 0, 0, 0, 0, {'s',
                                                                             'o',
                                                                             'l',
                                                                             'o',
                                                                             '6',
                                                                             'x',
                                                                             '1',
                                                                             '0',
                                                                             '\000'},
    0, 0, -1, (unsigned short)0, 0UL, 0, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}},
    {0, 0}, 0, 4351ULL, & video_device_release, & solo_enc_ioctl_ops, {0UL, 0UL, 0UL},
    {0UL, 0UL, 0UL}, 0};
static struct v4l2_ctrl_ops const solo_ctrl_ops___0 = {0, 0, & solo_s_ctrl___0};
static struct v4l2_ctrl_config const solo_motion_threshold_ctrl =
     {& solo_ctrl_ops___0, 10025217U, "Motion Detection Threshold", 1, 0, 65535, 1U,
    768, 32U, 0U, 0, 0, (unsigned char)0};
static char const * const solo_motion_mode_menu[4U] = { "Disabled", "Global Threshold", "Regional Threshold", (char const *)0};
static struct v4l2_ctrl_config const solo_motion_enable_ctrl =
     {& solo_ctrl_ops___0, 10025216U, "Motion Detection Mode", 3, 0, 2, 0U, 0, 0U, 0U,
    (char const * const *)(& solo_motion_mode_menu), 0, (unsigned char)0};
static struct v4l2_ctrl_config const solo_osd_text_ctrl =
     {& solo_ctrl_ops___0, 10025219U, "OSD Text", 7, 0, 44, 1U, 0, 0U, 0U, 0, 0, (unsigned char)0};
static struct solo_enc_dev *solo_enc_alloc(struct solo_dev *solo_dev , u8 ch , unsigned int nr )
{
  struct solo_enc_dev *solo_enc ;
  struct v4l2_ctrl_handler *hdl ;
  int ret ;
  int x ;
  int y ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key _key ;
  bool tmp___1 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  size_t __len ;
  void *__ret ;
  void *tmp___2 ;
  void *tmp___3 ;
  {
  tmp = kzalloc(137600UL, 208U);
  solo_enc = (struct solo_enc_dev *)tmp;
  if ((unsigned long )solo_enc == (unsigned long )((struct solo_enc_dev *)0)) {
    tmp___0 = ERR_PTR(-12L);
    return ((struct solo_enc_dev *)tmp___0);
  } else {
  }
  hdl = & solo_enc->hdl;
  v4l2_ctrl_handler_init_class(hdl, 10U, & _key, "solo6x10_v4l2_enc:1334:(hdl)->_lock");
  v4l2_ctrl_new_std(hdl, & solo_ctrl_ops___0, 9963776U, 0, 255, 1U, 128);
  v4l2_ctrl_new_std(hdl, & solo_ctrl_ops___0, 9963777U, 0, 255, 1U, 128);
  v4l2_ctrl_new_std(hdl, & solo_ctrl_ops___0, 9963778U, 0, 255, 1U, 128);
  v4l2_ctrl_new_std(hdl, & solo_ctrl_ops___0, 9963779U, 0, 255, 1U, 128);
  tmp___1 = tw28_has_sharpness(solo_dev, (int )ch);
  if ((int )tmp___1) {
    v4l2_ctrl_new_std(hdl, & solo_ctrl_ops___0, 9963803U, 0, 15, 1U, 0);
  } else {
  }
  v4l2_ctrl_new_std(hdl, & solo_ctrl_ops___0, 10029515U, 1, 255, 1U, (s32 )solo_dev->fps);
  v4l2_ctrl_new_custom(hdl, & solo_motion_threshold_ctrl, (void *)0);
  v4l2_ctrl_new_custom(hdl, & solo_motion_enable_ctrl, (void *)0);
  v4l2_ctrl_new_custom(hdl, & solo_osd_text_ctrl, (void *)0);
  if (hdl->error != 0) {
    ret = hdl->error;
    goto hdl_free;
  } else {
  }
  solo_enc->solo_dev = solo_dev;
  solo_enc->ch = ch;
  __mutex_init(& solo_enc->lock, "&solo_enc->lock", & __key);
  spinlock_check(& solo_enc->av_lock);
  __raw_spin_lock_init(& solo_enc->av_lock.ldv_6347.rlock, "&(&solo_enc->av_lock)->rlock",
                       & __key___0);
  INIT_LIST_HEAD(& solo_enc->vidq_active);
  solo_enc->fmt = solo_dev->type == 0 ? 877088845U : 875967048U;
  solo_enc->type = 0;
  solo_enc->qp = 3U;
  solo_enc->gop = solo_dev->fps;
  solo_enc->interval = 1U;
  solo_enc->mode = 2U;
  solo_enc->motion_global = 1;
  solo_enc->motion_thresh = 768U;
  y = 0;
  goto ldv_35158;
  ldv_35157:
  x = 0;
  goto ldv_35155;
  ldv_35154:
  solo_enc->motion_thresholds.thresholds[y][x] = 768U;
  x = x + 1;
  ldv_35155: ;
  if (x <= 44) {
    goto ldv_35154;
  } else {
  }
  y = y + 1;
  ldv_35158: ;
  if (y <= 44) {
    goto ldv_35157;
  } else {
  }
  solo_enc->vidq.type = 1;
  solo_enc->vidq.io_modes = 7U;
  solo_enc->vidq.ops = (struct vb2_ops const *)(& solo_enc_video_qops);
  solo_enc->vidq.mem_ops = & vb2_dma_sg_memops;
  solo_enc->vidq.drv_priv = (void *)solo_enc;
  solo_enc->vidq.gfp_flags = 4U;
  solo_enc->vidq.timestamp_flags = 8192U;
  solo_enc->vidq.buf_struct_size = 944U;
  solo_enc->vidq.lock = & solo_enc->lock;
  ret = vb2_queue_init(& solo_enc->vidq);
  if (ret != 0) {
    goto hdl_free;
  } else {
  }
  solo_update_mode(solo_enc);
  spinlock_check(& solo_enc->motion_lock);
  __raw_spin_lock_init(& solo_enc->motion_lock.ldv_6347.rlock, "&(&solo_enc->motion_lock)->rlock",
                       & __key___1);
  solo_enc->jpeg_len = 608;
  __len = (size_t )solo_enc->jpeg_len;
  __ret = __builtin_memcpy((void *)(& solo_enc->jpeg_header), (void const *)(& jpeg_header),
                           __len);
  solo_enc->desc_nelts = 32;
  tmp___2 = pci_alloc_consistent(solo_dev->pdev, (unsigned long )solo_enc->desc_nelts * 16UL,
                                 & solo_enc->desc_dma);
  solo_enc->desc_items = (struct solo_p2m_desc *)tmp___2;
  ret = -12;
  if ((unsigned long )solo_enc->desc_items == (unsigned long )((struct solo_p2m_desc *)0)) {
    goto hdl_free;
  } else {
  }
  solo_enc->vfd = video_device_alloc();
  if ((unsigned long )solo_enc->vfd == (unsigned long )((struct video_device *)0)) {
    goto pci_free;
  } else {
  }
  *(solo_enc->vfd) = solo_enc_template;
  (solo_enc->vfd)->v4l2_dev = & solo_dev->v4l2_dev;
  (solo_enc->vfd)->ctrl_handler = hdl;
  (solo_enc->vfd)->queue = & solo_enc->vidq;
  (solo_enc->vfd)->lock = & solo_enc->lock;
  set_bit(2L, (unsigned long volatile *)(& (solo_enc->vfd)->flags));
  video_set_drvdata(solo_enc->vfd, (void *)solo_enc);
  ret = video_register_device(solo_enc->vfd, 0, (int )nr);
  if (ret < 0) {
    goto vdev_release;
  } else {
  }
  snprintf((char *)(& (solo_enc->vfd)->name), 32UL, "%s-enc (%i/%i)", (char *)"solo6x10",
           (int )(solo_dev->vfd)->num, (int )(solo_enc->vfd)->num);
  return (solo_enc);
  vdev_release:
  video_device_release(solo_enc->vfd);
  pci_free:
  pci_free_consistent((solo_enc->solo_dev)->pdev, (unsigned long )solo_enc->desc_nelts * 16UL,
                      (void *)solo_enc->desc_items, solo_enc->desc_dma);
  hdl_free:
  v4l2_ctrl_handler_free(hdl);
  kfree((void const *)solo_enc);
  tmp___3 = ERR_PTR((long )ret);
  return ((struct solo_enc_dev *)tmp___3);
}
}
static void solo_enc_free(struct solo_enc_dev *solo_enc )
{
  {
  if ((unsigned long )solo_enc == (unsigned long )((struct solo_enc_dev *)0)) {
    return;
  } else {
  }
  video_unregister_device(solo_enc->vfd);
  v4l2_ctrl_handler_free(& solo_enc->hdl);
  kfree((void const *)solo_enc);
  return;
}
}
int solo_enc_v4l2_init(struct solo_dev *solo_dev , unsigned int nr )
{
  int i ;
  struct lock_class_key __key ;
  bool tmp ;
  int ret ;
  long tmp___0 ;
  int tmp___1 ;
  {
  __init_waitqueue_head(& solo_dev->ring_thread_wait, "&solo_dev->ring_thread_wait",
                        & __key);
  solo_dev->vh_size = 64;
  solo_dev->vh_buf = pci_alloc_consistent(solo_dev->pdev, (size_t )solo_dev->vh_size,
                                          & solo_dev->vh_dma);
  if ((unsigned long )solo_dev->vh_buf == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_35177;
  ldv_35176:
  solo_dev->v4l2_enc[i] = solo_enc_alloc(solo_dev, (int )((u8 )i), nr);
  tmp = IS_ERR((void const *)solo_dev->v4l2_enc[i]);
  if ((int )tmp) {
    goto ldv_35175;
  } else {
  }
  i = i + 1;
  ldv_35177: ;
  if (solo_dev->nr_chans > i) {
    goto ldv_35176;
  } else {
  }
  ldv_35175: ;
  if (solo_dev->nr_chans != i) {
    tmp___0 = PTR_ERR((void const *)solo_dev->v4l2_enc[i]);
    ret = (int )tmp___0;
    goto ldv_35180;
    ldv_35179:
    solo_enc_free(solo_dev->v4l2_enc[i]);
    ldv_35180:
    tmp___1 = i;
    i = i - 1;
    if (tmp___1 != 0) {
      goto ldv_35179;
    } else {
    }
    pci_free_consistent(solo_dev->pdev, (size_t )solo_dev->vh_size, solo_dev->vh_buf,
                        solo_dev->vh_dma);
    solo_dev->vh_buf = (void *)0;
    return (ret);
  } else {
  }
  if (solo_dev->type == 0) {
    solo_dev->enc_bw_remain = (unsigned int )((u16 )solo_dev->fps) * 16U;
  } else {
    solo_dev->enc_bw_remain = (unsigned int )((u16 )solo_dev->fps) * 20U;
  }
  _dev_info((struct device const *)(& (solo_dev->pdev)->dev), "Encoders as /dev/video%d-%d\n",
            (int )((solo_dev->v4l2_enc[0])->vfd)->num, (int )((solo_dev->v4l2_enc[solo_dev->nr_chans + -1])->vfd)->num);
  return (0);
}
}
void solo_enc_v4l2_exit(struct solo_dev *solo_dev )
{
  int i ;
  {
  i = 0;
  goto ldv_35187;
  ldv_35186:
  solo_enc_free(solo_dev->v4l2_enc[i]);
  i = i + 1;
  ldv_35187: ;
  if (solo_dev->nr_chans > i) {
    goto ldv_35186;
  } else {
  }
  if ((unsigned long )solo_dev->vh_buf != (unsigned long )((void *)0)) {
    pci_free_consistent(solo_dev->pdev, (size_t )solo_dev->vh_size, solo_dev->vh_buf,
                        solo_dev->vh_dma);
  } else {
  }
  return;
}
}
extern int ldv_probe_5(void) ;
int ldv_retval_2 ;
void ldv_initialize_vb2_ops_8(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(688UL);
  solo_enc_video_qops_group0 = (struct vb2_queue *)tmp;
  return;
}
}
void ldv_initialize_v4l2_file_operations_7(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(512UL);
  solo_enc_fops_group0 = (struct file *)tmp;
  return;
}
}
void ldv_initialize_v4l2_ioctl_ops_6(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  {
  tmp = ldv_zalloc(512UL);
  solo_enc_ioctl_ops_group4 = (struct file *)tmp;
  tmp___0 = ldv_zalloc(208UL);
  solo_enc_ioctl_ops_group0 = (struct v4l2_format *)tmp___0;
  tmp___1 = ldv_zalloc(32UL);
  solo_enc_ioctl_ops_group1 = (struct v4l2_event_subscription *)tmp___1;
  tmp___2 = ldv_zalloc(88UL);
  solo_enc_ioctl_ops_group5 = (struct v4l2_buffer *)tmp___2;
  tmp___3 = ldv_zalloc(176UL);
  solo_enc_ioctl_ops_group2 = (struct v4l2_fh *)tmp___3;
  tmp___4 = ldv_zalloc(204UL);
  solo_enc_ioctl_ops_group3 = (struct v4l2_streamparm *)tmp___4;
  return;
}
}
void ldv_main_exported_8(void)
{
  struct v4l2_format *ldvarg96 ;
  void *tmp ;
  struct vb2_buffer *ldvarg92 ;
  void *tmp___0 ;
  unsigned int ldvarg91 ;
  unsigned int tmp___1 ;
  unsigned int *ldvarg94 ;
  void *tmp___2 ;
  unsigned int *ldvarg97 ;
  void *tmp___3 ;
  unsigned int *ldvarg95 ;
  void *tmp___4 ;
  void **ldvarg93 ;
  void *tmp___5 ;
  int tmp___6 ;
  {
  tmp = ldv_zalloc(208UL);
  ldvarg96 = (struct v4l2_format *)tmp;
  tmp___0 = ldv_zalloc(928UL);
  ldvarg92 = (struct vb2_buffer *)tmp___0;
  tmp___1 = __VERIFIER_nondet_uint();
  ldvarg91 = tmp___1;
  tmp___2 = ldv_zalloc(4UL);
  ldvarg94 = (unsigned int *)tmp___2;
  tmp___3 = ldv_zalloc(4UL);
  ldvarg97 = (unsigned int *)tmp___3;
  tmp___4 = ldv_zalloc(4UL);
  ldvarg95 = (unsigned int *)tmp___4;
  tmp___5 = ldv_zalloc(8UL);
  ldvarg93 = (void **)tmp___5;
  tmp___6 = __VERIFIER_nondet_int();
  switch (tmp___6) {
  case 0: ;
  if (ldv_state_variable_8 == 1) {
    solo_enc_stop_streaming(solo_enc_video_qops_group0);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_35212;
  case 1: ;
  if (ldv_state_variable_8 == 1) {
    vb2_ops_wait_prepare(solo_enc_video_qops_group0);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_35212;
  case 2: ;
  if (ldv_state_variable_8 == 1) {
    solo_enc_queue_setup(solo_enc_video_qops_group0, (struct v4l2_format const *)ldvarg96,
                         ldvarg95, ldvarg94, ldvarg97, ldvarg93);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_35212;
  case 3: ;
  if (ldv_state_variable_8 == 1) {
    vb2_ops_wait_finish(solo_enc_video_qops_group0);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_35212;
  case 4: ;
  if (ldv_state_variable_8 == 1) {
    solo_enc_buf_queue(ldvarg92);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_35212;
  case 5: ;
  if (ldv_state_variable_8 == 1) {
    solo_enc_start_streaming(solo_enc_video_qops_group0, ldvarg91);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_35212;
  default:
  ldv_stop();
  }
  ldv_35212: ;
  return;
}
}
void ldv_main_exported_6(void)
{
  void *ldvarg19 ;
  void *tmp ;
  void *ldvarg22 ;
  void *tmp___0 ;
  struct v4l2_fmtdesc *ldvarg25 ;
  void *tmp___1 ;
  void *ldvarg17 ;
  void *tmp___2 ;
  unsigned int *ldvarg21 ;
  void *tmp___3 ;
  void *ldvarg30 ;
  void *tmp___4 ;
  void *ldvarg15 ;
  void *tmp___5 ;
  enum v4l2_buf_type ldvarg27 ;
  void *ldvarg26 ;
  void *tmp___6 ;
  struct v4l2_input *ldvarg9 ;
  void *tmp___7 ;
  void *ldvarg10 ;
  void *tmp___8 ;
  void *ldvarg36 ;
  void *tmp___9 ;
  void *ldvarg13 ;
  void *tmp___10 ;
  void *ldvarg8 ;
  void *tmp___11 ;
  void *ldvarg3 ;
  void *tmp___12 ;
  void *ldvarg31 ;
  void *tmp___13 ;
  void *ldvarg20 ;
  void *tmp___14 ;
  unsigned int ldvarg2 ;
  unsigned int tmp___15 ;
  void *ldvarg28 ;
  void *tmp___16 ;
  void *ldvarg34 ;
  void *tmp___17 ;
  struct v4l2_frmivalenum *ldvarg14 ;
  void *tmp___18 ;
  void *ldvarg4 ;
  void *tmp___19 ;
  bool ldvarg6 ;
  struct v4l2_capability *ldvarg16 ;
  void *tmp___20 ;
  void *ldvarg33 ;
  void *tmp___21 ;
  unsigned int ldvarg5 ;
  unsigned int tmp___22 ;
  enum v4l2_buf_type ldvarg0 ;
  struct v4l2_requestbuffers *ldvarg35 ;
  void *tmp___23 ;
  void *ldvarg24 ;
  void *tmp___24 ;
  void *ldvarg29 ;
  void *tmp___25 ;
  void *ldvarg1 ;
  void *tmp___26 ;
  v4l2_std_id *ldvarg12 ;
  void *tmp___27 ;
  void *ldvarg23 ;
  void *tmp___28 ;
  void *ldvarg7 ;
  void *tmp___29 ;
  v4l2_std_id ldvarg32 ;
  void *ldvarg11 ;
  void *tmp___30 ;
  struct v4l2_frmsizeenum *ldvarg18 ;
  void *tmp___31 ;
  int tmp___32 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg19 = tmp;
  tmp___0 = ldv_zalloc(1UL);
  ldvarg22 = tmp___0;
  tmp___1 = ldv_zalloc(64UL);
  ldvarg25 = (struct v4l2_fmtdesc *)tmp___1;
  tmp___2 = ldv_zalloc(1UL);
  ldvarg17 = tmp___2;
  tmp___3 = ldv_zalloc(4UL);
  ldvarg21 = (unsigned int *)tmp___3;
  tmp___4 = ldv_zalloc(1UL);
  ldvarg30 = tmp___4;
  tmp___5 = ldv_zalloc(1UL);
  ldvarg15 = tmp___5;
  tmp___6 = ldv_zalloc(1UL);
  ldvarg26 = tmp___6;
  tmp___7 = ldv_zalloc(80UL);
  ldvarg9 = (struct v4l2_input *)tmp___7;
  tmp___8 = ldv_zalloc(1UL);
  ldvarg10 = tmp___8;
  tmp___9 = ldv_zalloc(1UL);
  ldvarg36 = tmp___9;
  tmp___10 = ldv_zalloc(1UL);
  ldvarg13 = tmp___10;
  tmp___11 = ldv_zalloc(1UL);
  ldvarg8 = tmp___11;
  tmp___12 = ldv_zalloc(1UL);
  ldvarg3 = tmp___12;
  tmp___13 = ldv_zalloc(1UL);
  ldvarg31 = tmp___13;
  tmp___14 = ldv_zalloc(1UL);
  ldvarg20 = tmp___14;
  tmp___15 = __VERIFIER_nondet_uint();
  ldvarg2 = tmp___15;
  tmp___16 = ldv_zalloc(1UL);
  ldvarg28 = tmp___16;
  tmp___17 = ldv_zalloc(1UL);
  ldvarg34 = tmp___17;
  tmp___18 = ldv_zalloc(52UL);
  ldvarg14 = (struct v4l2_frmivalenum *)tmp___18;
  tmp___19 = ldv_zalloc(1UL);
  ldvarg4 = tmp___19;
  tmp___20 = ldv_zalloc(104UL);
  ldvarg16 = (struct v4l2_capability *)tmp___20;
  tmp___21 = ldv_zalloc(1UL);
  ldvarg33 = tmp___21;
  tmp___22 = __VERIFIER_nondet_uint();
  ldvarg5 = tmp___22;
  tmp___23 = ldv_zalloc(20UL);
  ldvarg35 = (struct v4l2_requestbuffers *)tmp___23;
  tmp___24 = ldv_zalloc(1UL);
  ldvarg24 = tmp___24;
  tmp___25 = ldv_zalloc(1UL);
  ldvarg29 = tmp___25;
  tmp___26 = ldv_zalloc(1UL);
  ldvarg1 = tmp___26;
  tmp___27 = ldv_zalloc(8UL);
  ldvarg12 = (v4l2_std_id *)tmp___27;
  tmp___28 = ldv_zalloc(1UL);
  ldvarg23 = tmp___28;
  tmp___29 = ldv_zalloc(1UL);
  ldvarg7 = tmp___29;
  tmp___30 = ldv_zalloc(1UL);
  ldvarg11 = tmp___30;
  tmp___31 = ldv_zalloc(44UL);
  ldvarg18 = (struct v4l2_frmsizeenum *)tmp___31;
  memset((void *)(& ldvarg27), 0, 4UL);
  memset((void *)(& ldvarg6), 0, 1UL);
  memset((void *)(& ldvarg0), 0, 4UL);
  memset((void *)(& ldvarg32), 0, 8UL);
  tmp___32 = __VERIFIER_nondet_int();
  switch (tmp___32) {
  case 0: ;
  if (ldv_state_variable_6 == 1) {
    vb2_ioctl_reqbufs(solo_enc_ioctl_ops_group4, ldvarg36, ldvarg35);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  case 1: ;
  if (ldv_state_variable_6 == 1) {
    v4l2_event_unsubscribe(solo_enc_ioctl_ops_group2, (struct v4l2_event_subscription const *)solo_enc_ioctl_ops_group1);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  case 2: ;
  if (ldv_state_variable_6 == 1) {
    solo_enc_try_fmt_cap(solo_enc_ioctl_ops_group4, ldvarg34, solo_enc_ioctl_ops_group0);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  case 3: ;
  if (ldv_state_variable_6 == 1) {
    solo_enc_s_std(solo_enc_ioctl_ops_group4, ldvarg33, ldvarg32);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  case 4: ;
  if (ldv_state_variable_6 == 1) {
    v4l2_ctrl_log_status(solo_enc_ioctl_ops_group4, ldvarg31);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  case 5: ;
  if (ldv_state_variable_6 == 1) {
    vb2_ioctl_querybuf(solo_enc_ioctl_ops_group4, ldvarg30, solo_enc_ioctl_ops_group5);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  case 6: ;
  if (ldv_state_variable_6 == 1) {
    vb2_ioctl_dqbuf(solo_enc_ioctl_ops_group4, ldvarg29, solo_enc_ioctl_ops_group5);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  case 7: ;
  if (ldv_state_variable_6 == 1) {
    vb2_ioctl_streamoff(solo_enc_ioctl_ops_group4, ldvarg28, ldvarg27);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  case 8: ;
  if (ldv_state_variable_6 == 1) {
    solo_enc_enum_fmt_cap(solo_enc_ioctl_ops_group4, ldvarg26, ldvarg25);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  case 9: ;
  if (ldv_state_variable_6 == 1) {
    solo_enc_set_fmt_cap(solo_enc_ioctl_ops_group4, ldvarg24, solo_enc_ioctl_ops_group0);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  case 10: ;
  if (ldv_state_variable_6 == 1) {
    solo_enc_get_fmt_cap(solo_enc_ioctl_ops_group4, ldvarg23, solo_enc_ioctl_ops_group0);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  case 11: ;
  if (ldv_state_variable_6 == 1) {
    solo_enc_get_input(solo_enc_ioctl_ops_group4, ldvarg22, ldvarg21);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  case 12: ;
  if (ldv_state_variable_6 == 1) {
    vb2_ioctl_qbuf(solo_enc_ioctl_ops_group4, ldvarg20, solo_enc_ioctl_ops_group5);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  case 13: ;
  if (ldv_state_variable_6 == 1) {
    solo_enum_framesizes(solo_enc_ioctl_ops_group4, ldvarg19, ldvarg18);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  case 14: ;
  if (ldv_state_variable_6 == 1) {
    solo_enc_querycap(solo_enc_ioctl_ops_group4, ldvarg17, ldvarg16);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  case 15: ;
  if (ldv_state_variable_6 == 1) {
    solo_enum_frameintervals(solo_enc_ioctl_ops_group4, ldvarg15, ldvarg14);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  case 16: ;
  if (ldv_state_variable_6 == 1) {
    solo_enc_g_std(solo_enc_ioctl_ops_group4, ldvarg13, ldvarg12);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  case 17: ;
  if (ldv_state_variable_6 == 1) {
    solo_g_parm(solo_enc_ioctl_ops_group4, ldvarg11, solo_enc_ioctl_ops_group3);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  case 18: ;
  if (ldv_state_variable_6 == 1) {
    solo_enc_enum_input(solo_enc_ioctl_ops_group4, ldvarg10, ldvarg9);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  case 19: ;
  if (ldv_state_variable_6 == 1) {
    v4l2_ctrl_subscribe_event(solo_enc_ioctl_ops_group2, (struct v4l2_event_subscription const *)solo_enc_ioctl_ops_group1);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  case 20: ;
  if (ldv_state_variable_6 == 1) {
    solo_enc_default(solo_enc_ioctl_ops_group4, ldvarg7, (int )ldvarg6, ldvarg5, ldvarg8);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  case 21: ;
  if (ldv_state_variable_6 == 1) {
    solo_s_parm(solo_enc_ioctl_ops_group4, ldvarg4, solo_enc_ioctl_ops_group3);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  case 22: ;
  if (ldv_state_variable_6 == 1) {
    solo_enc_set_input(solo_enc_ioctl_ops_group4, ldvarg3, ldvarg2);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  case 23: ;
  if (ldv_state_variable_6 == 1) {
    vb2_ioctl_streamon(solo_enc_ioctl_ops_group4, ldvarg1, ldvarg0);
    ldv_state_variable_6 = 1;
  } else {
  }
  goto ldv_35260;
  default:
  ldv_stop();
  }
  ldv_35260: ;
  return;
}
}
void ldv_main_exported_4(void)
{
  struct v4l2_ctrl *ldvarg98 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(144UL);
  ldvarg98 = (struct v4l2_ctrl *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_4 == 1) {
    solo_s_ctrl___0(ldvarg98);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_35290;
  default:
  ldv_stop();
  }
  ldv_35290: ;
  return;
}
}
void ldv_main_exported_7(void)
{
  loff_t *ldvarg75 ;
  void *tmp ;
  unsigned long ldvarg72 ;
  unsigned long tmp___0 ;
  struct poll_table_struct *ldvarg74 ;
  void *tmp___1 ;
  size_t ldvarg76 ;
  size_t tmp___2 ;
  struct vm_area_struct *ldvarg78 ;
  void *tmp___3 ;
  unsigned int ldvarg73 ;
  unsigned int tmp___4 ;
  char *ldvarg77 ;
  void *tmp___5 ;
  int tmp___6 ;
  {
  tmp = ldv_zalloc(8UL);
  ldvarg75 = (loff_t *)tmp;
  tmp___0 = __VERIFIER_nondet_ulong();
  ldvarg72 = tmp___0;
  tmp___1 = ldv_zalloc(16UL);
  ldvarg74 = (struct poll_table_struct *)tmp___1;
  tmp___2 = __VERIFIER_nondet_size_t();
  ldvarg76 = tmp___2;
  tmp___3 = ldv_zalloc(184UL);
  ldvarg78 = (struct vm_area_struct *)tmp___3;
  tmp___4 = __VERIFIER_nondet_uint();
  ldvarg73 = tmp___4;
  tmp___5 = ldv_zalloc(1UL);
  ldvarg77 = (char *)tmp___5;
  tmp___6 = __VERIFIER_nondet_int();
  switch (tmp___6) {
  case 0: ;
  if (ldv_state_variable_7 == 1) {
    ldv_retval_2 = v4l2_fh_open(solo_enc_fops_group0);
    if (ldv_retval_2 == 0) {
      ldv_state_variable_7 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_35303;
  case 1: ;
  if (ldv_state_variable_7 == 1) {
    vb2_fop_mmap(solo_enc_fops_group0, ldvarg78);
    ldv_state_variable_7 = 1;
  } else {
  }
  if (ldv_state_variable_7 == 2) {
    vb2_fop_mmap(solo_enc_fops_group0, ldvarg78);
    ldv_state_variable_7 = 2;
  } else {
  }
  goto ldv_35303;
  case 2: ;
  if (ldv_state_variable_7 == 2) {
    vb2_fop_release(solo_enc_fops_group0);
    ldv_state_variable_7 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_35303;
  case 3: ;
  if (ldv_state_variable_7 == 2) {
    vb2_fop_read(solo_enc_fops_group0, ldvarg77, ldvarg76, ldvarg75);
    ldv_state_variable_7 = 2;
  } else {
  }
  goto ldv_35303;
  case 4: ;
  if (ldv_state_variable_7 == 1) {
    vb2_fop_poll(solo_enc_fops_group0, ldvarg74);
    ldv_state_variable_7 = 1;
  } else {
  }
  if (ldv_state_variable_7 == 2) {
    vb2_fop_poll(solo_enc_fops_group0, ldvarg74);
    ldv_state_variable_7 = 2;
  } else {
  }
  goto ldv_35303;
  case 5: ;
  if (ldv_state_variable_7 == 1) {
    video_ioctl2(solo_enc_fops_group0, ldvarg73, ldvarg72);
    ldv_state_variable_7 = 1;
  } else {
  }
  if (ldv_state_variable_7 == 2) {
    video_ioctl2(solo_enc_fops_group0, ldvarg73, ldvarg72);
    ldv_state_variable_7 = 2;
  } else {
  }
  goto ldv_35303;
  default:
  ldv_stop();
  }
  ldv_35303: ;
  return;
}
}
void ldv_main_exported_5(void)
{
  struct video_device *ldvarg107 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(1840UL);
  ldvarg107 = (struct video_device *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_5 == 2) {
    video_device_release(ldvarg107);
    ldv_state_variable_5 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_35315;
  case 1: ;
  if (ldv_state_variable_5 == 1) {
    ldv_probe_5();
    ldv_state_variable_5 = 2;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_35315;
  default:
  ldv_stop();
  }
  ldv_35315: ;
  return;
}
}
void *ldv_kmem_cache_alloc_184(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
extern void might_fault(void) ;
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static int atomic_sub_return(int i , atomic_t *v )
{
  int tmp ;
  {
  tmp = atomic_add_return(- i, v);
  return (tmp);
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
void *ldv_kmem_cache_alloc_204(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern void __copy_to_user_overflow(void) ;
__inline static unsigned long copy_to_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = __builtin_object_size(from, 0);
  sz = (int )tmp;
  might_fault();
  tmp___0 = ldv__builtin_expect(sz < 0, 1L);
  if (tmp___0 != 0L) {
    n = _copy_to_user(to, from, (unsigned int )n);
  } else {
    tmp___1 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___1 != 0L) {
      n = _copy_to_user(to, from, (unsigned int )n);
    } else {
      __copy_to_user_overflow();
    }
  }
  return (n);
}
}
extern int snd_card_new(struct device * , int , char const * , struct module * ,
                        int , struct snd_card ** ) ;
extern int snd_card_free(struct snd_card * ) ;
extern int snd_card_register(struct snd_card * ) ;
extern int snd_device_new(struct snd_card * , enum snd_device_type , void * , struct snd_device_ops * ) ;
extern int snd_pcm_new(struct snd_card * , char const * , int , int , int , struct snd_pcm ** ) ;
__inline static struct snd_interval const *hw_param_interval_c(struct snd_pcm_hw_params const *params ,
                                                                 snd_pcm_hw_param_t var )
{
  {
  return ((struct snd_interval const *)(& params->intervals) + ((unsigned long )var + 0xfffffffffffffff8UL));
}
}
extern void snd_pcm_set_ops(struct snd_pcm * , int , struct snd_pcm_ops const * ) ;
extern int snd_pcm_lib_ioctl(struct snd_pcm_substream * , unsigned int , void * ) ;
extern void snd_pcm_period_elapsed(struct snd_pcm_substream * ) ;
extern int snd_pcm_lib_preallocate_pages_for_all(struct snd_pcm * , int , void * ,
                                                 size_t , size_t ) ;
extern int snd_pcm_lib_malloc_pages(struct snd_pcm_substream * , size_t ) ;
extern int snd_pcm_lib_free_pages(struct snd_pcm_substream * ) ;
extern struct snd_kcontrol *snd_ctl_new1(struct snd_kcontrol_new const * , void * ) ;
extern int snd_ctl_add(struct snd_card * , struct snd_kcontrol * ) ;
__inline static u32 solo_reg_read___6(struct solo_dev *solo_dev , int reg )
{
  unsigned long flags ;
  u32 ret ;
  u16 val ;
  {
  ldv_spin_lock();
  ret = readl((void const volatile *)solo_dev->reg_base + (unsigned long )reg);
  __asm__ volatile ("lfence": : : "memory");
  pci_read_config_word((struct pci_dev const *)solo_dev->pdev, 6, & val);
  __asm__ volatile ("lfence": : : "memory");
  spin_unlock_irqrestore(& solo_dev->reg_io_lock, flags);
  return (ret);
}
}
__inline static void solo_reg_write___7(struct solo_dev *solo_dev , int reg , u32 data )
{
  unsigned long flags ;
  u16 val ;
  {
  ldv_spin_lock();
  writel(data, (void volatile *)solo_dev->reg_base + (unsigned long )reg);
  __asm__ volatile ("sfence": : : "memory");
  pci_read_config_word((struct pci_dev const *)solo_dev->pdev, 6, & val);
  __asm__ volatile ("lfence": : : "memory");
  spin_unlock_irqrestore(& solo_dev->reg_io_lock, flags);
  return;
}
}
__inline static void solo_irq_on___4(struct solo_dev *dev , u32 mask )
{
  {
  dev->irq_mask = dev->irq_mask | mask;
  solo_reg_write___7(dev, 20, dev->irq_mask);
  return;
}
}
__inline static void solo_irq_off___4(struct solo_dev *dev , u32 mask )
{
  {
  dev->irq_mask = dev->irq_mask & ~ mask;
  solo_reg_write___7(dev, 20, dev->irq_mask);
  return;
}
}
static void solo_g723_config(struct solo_dev *solo_dev )
{
  int clk_div ;
  {
  clk_div = (int )((solo_dev->clock_mhz * 1000000U) / 800000U);
  solo_reg_write___7(solo_dev, 3332, (u32 )(clk_div | 1638400));
  solo_reg_write___7(solo_dev, 3336, solo_dev->type == 0 ? 786544U : 786576U);
  solo_reg_write___7(solo_dev, 3328, 2734686976U);
  return;
}
}
void solo_g723_isr(struct solo_dev *solo_dev )
{
  struct snd_pcm_str *pstr ;
  struct snd_pcm_substream *ss ;
  struct solo_snd_pcm *solo_pcm ;
  {
  pstr = (struct snd_pcm_str *)(& (solo_dev->snd_pcm)->streams) + 1UL;
  ss = pstr->substream;
  goto ldv_36017;
  ldv_36016: ;
  if ((unsigned long )ss->private_data == (unsigned long )((void *)0)) {
    goto ldv_36015;
  } else {
  }
  if ((unsigned long )ss->private_data == (unsigned long )((void *)solo_dev)) {
    goto ldv_36015;
  } else {
  }
  solo_pcm = (struct solo_snd_pcm *)ss->private_data;
  if (solo_pcm->on == 0) {
    goto ldv_36015;
  } else {
  }
  snd_pcm_period_elapsed(ss);
  ldv_36015:
  ss = ss->next;
  ldv_36017: ;
  if ((unsigned long )ss != (unsigned long )((struct snd_pcm_substream *)0)) {
    goto ldv_36016;
  } else {
  }
  return;
}
}
static int snd_solo_hw_params(struct snd_pcm_substream *ss , struct snd_pcm_hw_params *hw_params )
{
  struct snd_interval const *tmp ;
  int tmp___0 ;
  {
  tmp = hw_param_interval_c((struct snd_pcm_hw_params const *)hw_params, 18);
  tmp___0 = snd_pcm_lib_malloc_pages(ss, (size_t )tmp->min);
  return (tmp___0);
}
}
static int snd_solo_hw_free(struct snd_pcm_substream *ss )
{
  int tmp ;
  {
  tmp = snd_pcm_lib_free_pages(ss);
  return (tmp);
}
}
static struct snd_pcm_hardware const snd_solo_pcm_hw =
     {65795U, 2ULL, 2U, 8000U, 8000U, 1U, 1U, 1536UL, 48UL, 48UL, 16U, 32U, 0UL};
static int snd_solo_pcm_open(struct snd_pcm_substream *ss )
{
  struct solo_dev *solo_dev ;
  struct solo_snd_pcm *solo_pcm ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  {
  solo_dev = (struct solo_dev *)ss->private_data;
  tmp = kzalloc(104UL, 208U);
  solo_pcm = (struct solo_snd_pcm *)tmp;
  if ((unsigned long )solo_pcm == (unsigned long )((struct solo_snd_pcm *)0)) {
    goto oom;
  } else {
  }
  tmp___0 = pci_alloc_consistent(solo_dev->pdev, 48UL, & solo_pcm->g723_dma);
  solo_pcm->g723_buf = (unsigned char *)tmp___0;
  if ((unsigned long )solo_pcm->g723_buf == (unsigned long )((unsigned char *)0U)) {
    goto oom;
  } else {
  }
  spinlock_check(& solo_pcm->lock);
  __raw_spin_lock_init(& solo_pcm->lock.ldv_6347.rlock, "&(&solo_pcm->lock)->rlock",
                       & __key);
  solo_pcm->solo_dev = solo_dev;
  (ss->runtime)->hw = snd_solo_pcm_hw;
  ss->private_data = (void *)solo_pcm;
  return (0);
  oom:
  kfree((void const *)solo_pcm);
  return (-12);
}
}
static int snd_solo_pcm_close(struct snd_pcm_substream *ss )
{
  struct solo_snd_pcm *solo_pcm ;
  {
  solo_pcm = (struct solo_snd_pcm *)ss->private_data;
  ss->private_data = (void *)solo_pcm->solo_dev;
  pci_free_consistent((solo_pcm->solo_dev)->pdev, 48UL, (void *)solo_pcm->g723_buf,
                      solo_pcm->g723_dma);
  kfree((void const *)solo_pcm);
  return (0);
}
}
static int snd_solo_pcm_trigger(struct snd_pcm_substream *ss , int cmd )
{
  struct solo_snd_pcm *solo_pcm ;
  struct solo_dev *solo_dev ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  {
  solo_pcm = (struct solo_snd_pcm *)ss->private_data;
  solo_dev = solo_pcm->solo_dev;
  ret = 0;
  spin_lock(& solo_pcm->lock);
  switch (cmd) {
  case 1: ;
  if (solo_pcm->on == 0) {
    tmp = atomic_add_return(1, & solo_dev->snd_users);
    if (tmp == 1) {
      solo_irq_on___4(solo_dev, 8U);
    } else {
    }
    solo_pcm->on = 1;
  } else {
  }
  goto ldv_36046;
  case 0: ;
  if (solo_pcm->on != 0) {
    tmp___0 = atomic_sub_return(1, & solo_dev->snd_users);
    if (tmp___0 == 0) {
      solo_irq_off___4(solo_dev, 8U);
    } else {
    }
    solo_pcm->on = 0;
  } else {
  }
  goto ldv_36046;
  default:
  ret = -22;
  }
  ldv_36046:
  spin_unlock(& solo_pcm->lock);
  return (ret);
}
}
static int snd_solo_pcm_prepare(struct snd_pcm_substream *ss )
{
  {
  return (0);
}
}
static snd_pcm_uframes_t snd_solo_pcm_pointer(struct snd_pcm_substream *ss )
{
  struct solo_snd_pcm *solo_pcm ;
  struct solo_dev *solo_dev ;
  snd_pcm_uframes_t idx ;
  u32 tmp ;
  {
  solo_pcm = (struct solo_snd_pcm *)ss->private_data;
  solo_dev = solo_pcm->solo_dev;
  tmp = solo_reg_read___6(solo_dev, 3348);
  idx = (snd_pcm_uframes_t )tmp & 31UL;
  return (idx * 48UL);
}
}
static int snd_solo_pcm_copy(struct snd_pcm_substream *ss , int channel , snd_pcm_uframes_t pos ,
                             void *dst , snd_pcm_uframes_t count )
{
  struct solo_snd_pcm *solo_pcm ;
  struct solo_dev *solo_dev ;
  int err ;
  int i ;
  int page ;
  unsigned long tmp ;
  {
  solo_pcm = (struct solo_snd_pcm *)ss->private_data;
  solo_dev = solo_pcm->solo_dev;
  i = 0;
  goto ldv_36071;
  ldv_36070:
  page = (int )((unsigned int )(pos / 48UL) + (unsigned int )i);
  err = solo_p2m_dma_t(solo_dev, 0, solo_pcm->g723_dma, (u32 )((solo_dev->type == 0 ? 7340032 : 9437184) + (ss->number * 48 + page * 1024)),
                       48U, 0, 0U);
  if (err != 0) {
    return (err);
  } else {
  }
  tmp = copy_to_user(dst + (unsigned long )(i * 48), (void const *)solo_pcm->g723_buf,
                     48UL);
  err = (int )tmp;
  if (err != 0) {
    return (-14);
  } else {
  }
  i = i + 1;
  ldv_36071: ;
  if ((snd_pcm_uframes_t )i < count / 48UL) {
    goto ldv_36070;
  } else {
  }
  return (0);
}
}
static struct snd_pcm_ops snd_solo_pcm_ops =
     {& snd_solo_pcm_open, & snd_solo_pcm_close, & snd_pcm_lib_ioctl, & snd_solo_hw_params,
    & snd_solo_hw_free, & snd_solo_pcm_prepare, & snd_solo_pcm_trigger, & snd_solo_pcm_pointer,
    0, & snd_solo_pcm_copy, 0, 0, 0, 0};
static int snd_solo_capture_volume_info(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_info *info )
{
  {
  info->type = 2;
  info->count = 1U;
  info->value.integer.min = 0L;
  info->value.integer.max = 15L;
  info->value.integer.step = 1L;
  return (0);
}
}
static int snd_solo_capture_volume_get(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *value )
{
  struct solo_dev *solo_dev ;
  u8 ch ;
  u8 tmp ;
  {
  solo_dev = (struct solo_dev *)kcontrol->private_data;
  ch = (unsigned int )((u8 )value->id.numid) - 1U;
  tmp = tw28_get_audio_gain(solo_dev, (int )ch);
  value->value.integer.value[0] = (long )tmp;
  return (0);
}
}
static int snd_solo_capture_volume_put(struct snd_kcontrol *kcontrol , struct snd_ctl_elem_value *value )
{
  struct solo_dev *solo_dev ;
  u8 ch ;
  u8 old_val ;
  {
  solo_dev = (struct solo_dev *)kcontrol->private_data;
  ch = (unsigned int )((u8 )value->id.numid) - 1U;
  old_val = tw28_get_audio_gain(solo_dev, (int )ch);
  if ((long )old_val == value->value.integer.value[0]) {
    return (0);
  } else {
  }
  tw28_set_audio_gain(solo_dev, (int )ch, (int )((u8 )value->value.integer.value[0]));
  return (1);
}
}
static struct snd_kcontrol_new snd_solo_capture_volume =
     {2, 0U, 0U, (unsigned char const *)"Capture Volume", 0U, 0U, 0U, & snd_solo_capture_volume_info,
    & snd_solo_capture_volume_get, & snd_solo_capture_volume_put, {0}, 0UL};
static int solo_snd_pcm_init(struct solo_dev *solo_dev )
{
  struct snd_card *card ;
  struct snd_pcm *pcm ;
  struct snd_pcm_substream *ss ;
  int ret ;
  int i ;
  {
  card = solo_dev->snd_card;
  ret = snd_pcm_new(card, (char const *)(& card->driver), 0, 0, solo_dev->nr_chans,
                    & pcm);
  if (ret < 0) {
    return (ret);
  } else {
  }
  snd_pcm_set_ops(pcm, 1, (struct snd_pcm_ops const *)(& snd_solo_pcm_ops));
  pcm->private_data = (void *)solo_dev;
  pcm->info_flags = 0U;
  strcpy((char *)(& pcm->name), (char const *)(& card->shortname));
  i = 0;
  ss = pcm->streams[1].substream;
  goto ldv_36101;
  ldv_36100:
  sprintf((char *)(& ss->name), "Camera #%d Audio", i);
  ss = ss->next;
  i = i + 1;
  ldv_36101: ;
  if ((unsigned long )ss != (unsigned long )((struct snd_pcm_substream *)0)) {
    goto ldv_36100;
  } else {
  }
  ret = snd_pcm_lib_preallocate_pages_for_all(pcm, 1, (void *)208, 1536UL, 1536UL);
  if (ret < 0) {
    return (ret);
  } else {
  }
  solo_dev->snd_pcm = pcm;
  return (0);
}
}
int solo_g723_init(struct solo_dev *solo_dev )
{
  struct snd_device_ops ops ;
  struct snd_card *card ;
  struct snd_kcontrol_new kctl ;
  char name[32U] ;
  int ret ;
  char const *tmp ;
  struct snd_kcontrol *tmp___0 ;
  {
  ops.dev_free = (int (*)(struct snd_device * ))0;
  ops.dev_register = 0;
  ops.dev_disconnect = 0;
  atomic_set(& solo_dev->snd_users, 0);
  sprintf((char *)(& name), "Softlogic%d", (int )(solo_dev->vfd)->num);
  ret = snd_card_new(& (solo_dev->pdev)->dev, -1, (char const *)(& name), & __this_module,
                     0, & solo_dev->snd_card);
  if (ret < 0) {
    return (ret);
  } else {
  }
  card = solo_dev->snd_card;
  strcpy((char *)(& card->driver), "solo6x10");
  strcpy((char *)(& card->shortname), "SOLO-6x10 Audio");
  tmp = pci_name((struct pci_dev const *)solo_dev->pdev);
  sprintf((char *)(& card->longname), "%s on %s IRQ %d", (char *)(& card->shortname),
          tmp, (solo_dev->pdev)->irq);
  ret = snd_device_new(card, 0, (void *)solo_dev, & ops);
  if (ret < 0) {
    goto snd_error;
  } else {
  }
  strcpy((char *)(& card->mixername), "SOLO-6x10");
  kctl = snd_solo_capture_volume;
  kctl.count = (unsigned int )solo_dev->nr_chans;
  tmp___0 = snd_ctl_new1((struct snd_kcontrol_new const *)(& kctl), (void *)solo_dev);
  ret = snd_ctl_add(card, tmp___0);
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = solo_snd_pcm_init(solo_dev);
  if (ret < 0) {
    goto snd_error;
  } else {
  }
  ret = snd_card_register(card);
  if (ret < 0) {
    goto snd_error;
  } else {
  }
  solo_g723_config(solo_dev);
  _dev_info((struct device const *)(& (solo_dev->pdev)->dev), "Alsa sound card as %s\n",
            (char *)(& name));
  return (0);
  snd_error:
  snd_card_free(card);
  return (ret);
}
}
void solo_g723_exit(struct solo_dev *solo_dev )
{
  {
  if ((unsigned long )solo_dev->snd_card == (unsigned long )((struct snd_card *)0)) {
    return;
  } else {
  }
  solo_reg_write___7(solo_dev, 3328, 0U);
  solo_irq_off___4(solo_dev, 8U);
  snd_card_free(solo_dev->snd_card);
  solo_dev->snd_card = (struct snd_card *)0;
  return;
}
}
int ldv_retval_0 ;
int ldv_retval_1 ;
void ldv_initialize_snd_pcm_ops_3(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(704UL);
  snd_solo_pcm_ops_group0 = (struct snd_pcm_substream *)tmp;
  return;
}
}
void ldv_initialize_snd_kcontrol_new_2(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(144UL);
  snd_solo_capture_volume_group0 = (struct snd_kcontrol *)tmp;
  tmp___0 = ldv_zalloc(1224UL);
  snd_solo_capture_volume_group1 = (struct snd_ctl_elem_value *)tmp___0;
  return;
}
}
void ldv_main_exported_3(void)
{
  void *ldvarg66 ;
  void *tmp ;
  int ldvarg64 ;
  int tmp___0 ;
  struct snd_pcm_hw_params *ldvarg65 ;
  void *tmp___1 ;
  snd_pcm_uframes_t ldvarg69 ;
  int ldvarg68 ;
  int tmp___2 ;
  unsigned int ldvarg71 ;
  unsigned int tmp___3 ;
  snd_pcm_uframes_t ldvarg67 ;
  void *ldvarg70 ;
  void *tmp___4 ;
  int tmp___5 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg66 = tmp;
  tmp___0 = __VERIFIER_nondet_int();
  ldvarg64 = tmp___0;
  tmp___1 = ldv_zalloc(608UL);
  ldvarg65 = (struct snd_pcm_hw_params *)tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  ldvarg68 = tmp___2;
  tmp___3 = __VERIFIER_nondet_uint();
  ldvarg71 = tmp___3;
  tmp___4 = ldv_zalloc(1UL);
  ldvarg70 = tmp___4;
  memset((void *)(& ldvarg69), 0, 8UL);
  memset((void *)(& ldvarg67), 0, 8UL);
  tmp___5 = __VERIFIER_nondet_int();
  switch (tmp___5) {
  case 0: ;
  if (ldv_state_variable_3 == 1) {
    snd_solo_pcm_pointer(snd_solo_pcm_ops_group0);
    ldv_state_variable_3 = 1;
  } else {
  }
  if (ldv_state_variable_3 == 2) {
    snd_solo_pcm_pointer(snd_solo_pcm_ops_group0);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_36135;
  case 1: ;
  if (ldv_state_variable_3 == 1) {
    ldv_retval_1 = snd_solo_pcm_open(snd_solo_pcm_ops_group0);
    if (ldv_retval_1 == 0) {
      ldv_state_variable_3 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_36135;
  case 2: ;
  if (ldv_state_variable_3 == 1) {
    snd_pcm_lib_ioctl(snd_solo_pcm_ops_group0, ldvarg71, ldvarg70);
    ldv_state_variable_3 = 1;
  } else {
  }
  if (ldv_state_variable_3 == 2) {
    snd_pcm_lib_ioctl(snd_solo_pcm_ops_group0, ldvarg71, ldvarg70);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_36135;
  case 3: ;
  if (ldv_state_variable_3 == 1) {
    snd_solo_pcm_prepare(snd_solo_pcm_ops_group0);
    ldv_state_variable_3 = 1;
  } else {
  }
  if (ldv_state_variable_3 == 2) {
    snd_solo_pcm_prepare(snd_solo_pcm_ops_group0);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_36135;
  case 4: ;
  if (ldv_state_variable_3 == 1) {
    snd_solo_hw_free(snd_solo_pcm_ops_group0);
    ldv_state_variable_3 = 1;
  } else {
  }
  if (ldv_state_variable_3 == 2) {
    snd_solo_hw_free(snd_solo_pcm_ops_group0);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_36135;
  case 5: ;
  if (ldv_state_variable_3 == 2) {
    ldv_retval_0 = snd_solo_pcm_close(snd_solo_pcm_ops_group0);
    if (ldv_retval_0 == 0) {
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
  } else {
  }
  goto ldv_36135;
  case 6: ;
  if (ldv_state_variable_3 == 1) {
    snd_solo_pcm_copy(snd_solo_pcm_ops_group0, ldvarg68, ldvarg67, ldvarg66, ldvarg69);
    ldv_state_variable_3 = 1;
  } else {
  }
  if (ldv_state_variable_3 == 2) {
    snd_solo_pcm_copy(snd_solo_pcm_ops_group0, ldvarg68, ldvarg67, ldvarg66, ldvarg69);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_36135;
  case 7: ;
  if (ldv_state_variable_3 == 1) {
    snd_solo_hw_params(snd_solo_pcm_ops_group0, ldvarg65);
    ldv_state_variable_3 = 1;
  } else {
  }
  if (ldv_state_variable_3 == 2) {
    snd_solo_hw_params(snd_solo_pcm_ops_group0, ldvarg65);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_36135;
  case 8: ;
  if (ldv_state_variable_3 == 1) {
    snd_solo_pcm_trigger(snd_solo_pcm_ops_group0, ldvarg64);
    ldv_state_variable_3 = 1;
  } else {
  }
  if (ldv_state_variable_3 == 2) {
    snd_solo_pcm_trigger(snd_solo_pcm_ops_group0, ldvarg64);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_36135;
  default:
  ldv_stop();
  }
  ldv_36135: ;
  return;
}
}
void ldv_main_exported_2(void)
{
  struct snd_ctl_elem_info *ldvarg87 ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = ldv_zalloc(272UL);
  ldvarg87 = (struct snd_ctl_elem_info *)tmp;
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_2 == 1) {
    snd_solo_capture_volume_info(snd_solo_capture_volume_group0, ldvarg87);
    ldv_state_variable_2 = 1;
  } else {
  }
  goto ldv_36150;
  case 1: ;
  if (ldv_state_variable_2 == 1) {
    snd_solo_capture_volume_get(snd_solo_capture_volume_group0, snd_solo_capture_volume_group1);
    ldv_state_variable_2 = 1;
  } else {
  }
  goto ldv_36150;
  case 2: ;
  if (ldv_state_variable_2 == 1) {
    snd_solo_capture_volume_put(snd_solo_capture_volume_group0, snd_solo_capture_volume_group1);
    ldv_state_variable_2 = 1;
  } else {
  }
  goto ldv_36150;
  default:
  ldv_stop();
  }
  ldv_36150: ;
  return;
}
}
void *ldv_kmem_cache_alloc_204(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
void *ldv_kmem_cache_alloc_224(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static u32 solo_reg_read___7(struct solo_dev *solo_dev , int reg )
{
  unsigned long flags ;
  u32 ret ;
  u16 val ;
  {
  ldv_spin_lock();
  ret = readl((void const volatile *)solo_dev->reg_base + (unsigned long )reg);
  __asm__ volatile ("lfence": : : "memory");
  pci_read_config_word((struct pci_dev const *)solo_dev->pdev, 6, & val);
  __asm__ volatile ("lfence": : : "memory");
  spin_unlock_irqrestore(& solo_dev->reg_io_lock, flags);
  return (ret);
}
}
__inline static void solo_reg_write___8(struct solo_dev *solo_dev , int reg , u32 data )
{
  unsigned long flags ;
  u16 val ;
  {
  ldv_spin_lock();
  writel(data, (void volatile *)solo_dev->reg_base + (unsigned long )reg);
  __asm__ volatile ("sfence": : : "memory");
  pci_read_config_word((struct pci_dev const *)solo_dev->pdev, 6, & val);
  __asm__ volatile ("lfence": : : "memory");
  spin_unlock_irqrestore(& solo_dev->reg_io_lock, flags);
  return;
}
}
static unsigned int solo_eeprom_reg_read(struct solo_dev *solo_dev )
{
  u32 tmp ;
  {
  tmp = solo_reg_read___7(solo_dev, 96);
  return (tmp & 1U);
}
}
static void solo_eeprom_reg_write(struct solo_dev *solo_dev , u32 data )
{
  {
  solo_reg_write___8(solo_dev, 96, data);
  __const_udelay(429500UL);
  return;
}
}
static void solo_eeprom_cmd(struct solo_dev *solo_dev , int cmd )
{
  int i ;
  int dataval ;
  {
  solo_eeprom_reg_write(solo_dev, 128U);
  solo_eeprom_reg_write(solo_dev, 136U);
  i = 10;
  goto ldv_34005;
  ldv_34004:
  dataval = (cmd >> i) & 1 ? 2 : 0;
  solo_eeprom_reg_write(solo_dev, (u32 )(dataval | 136));
  solo_eeprom_reg_write(solo_dev, (u32 )(dataval | 140));
  i = i - 1;
  ldv_34005: ;
  if (i >= 0) {
    goto ldv_34004;
  } else {
  }
  solo_eeprom_reg_write(solo_dev, 136U);
  return;
}
}
unsigned int solo_eeprom_ewen(struct solo_dev *solo_dev , int w_en )
{
  int ewen_cmd ;
  unsigned int retval ;
  int i ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  ewen_cmd = w_en != 0 ? 319 : 256;
  retval = 0U;
  solo_eeprom_cmd(solo_dev, ewen_cmd);
  i = 0;
  goto ldv_34015;
  ldv_34014:
  solo_eeprom_reg_write(solo_dev, 140U);
  tmp = solo_eeprom_reg_read(solo_dev);
  retval = (retval << 1) | tmp;
  solo_eeprom_reg_write(solo_dev, 136U);
  tmp___0 = solo_eeprom_reg_read(solo_dev);
  retval = (retval << 1) | tmp___0;
  i = i + 1;
  ldv_34015: ;
  if (i <= 15) {
    goto ldv_34014;
  } else {
  }
  solo_eeprom_reg_write(solo_dev, 4294967287U);
  tmp___1 = solo_eeprom_reg_read(solo_dev);
  retval = (retval << 1) | tmp___1;
  return (retval);
}
}
unsigned short solo_eeprom_read(struct solo_dev *solo_dev , int loc )
{
  int read_cmd ;
  unsigned short retval ;
  int i ;
  unsigned int tmp ;
  {
  read_cmd = loc | 384;
  retval = 0U;
  solo_eeprom_cmd(solo_dev, read_cmd);
  i = 0;
  goto ldv_34025;
  ldv_34024:
  solo_eeprom_reg_write(solo_dev, 140U);
  tmp = solo_eeprom_reg_read(solo_dev);
  retval = ((int )retval << 1U) | (int )((unsigned short )tmp);
  solo_eeprom_reg_write(solo_dev, 136U);
  i = i + 1;
  ldv_34025: ;
  if (i <= 15) {
    goto ldv_34024;
  } else {
  }
  solo_eeprom_reg_write(solo_dev, 4294967287U);
  return (retval);
}
}
int solo_eeprom_write(struct solo_dev *solo_dev , int loc , unsigned short data )
{
  int write_cmd ;
  unsigned int retval ;
  int i ;
  unsigned int dataval ;
  {
  write_cmd = loc | 320;
  solo_eeprom_cmd(solo_dev, write_cmd);
  i = 15;
  goto ldv_34037;
  ldv_34036:
  dataval = (unsigned int )((int )data >> i) & 1U;
  solo_eeprom_reg_write(solo_dev, 136U);
  solo_eeprom_reg_write(solo_dev, (dataval << 1) | 140U);
  i = i - 1;
  ldv_34037: ;
  if (i >= 0) {
    goto ldv_34036;
  } else {
  }
  solo_eeprom_reg_write(solo_dev, 136U);
  solo_eeprom_reg_write(solo_dev, 4294967287U);
  solo_eeprom_reg_write(solo_dev, 136U);
  retval = 0U;
  i = 0;
  goto ldv_34040;
  ldv_34039:
  retval = solo_eeprom_reg_read(solo_dev);
  i = i + 1;
  ldv_34040: ;
  if (i <= 9999 && retval == 0U) {
    goto ldv_34039;
  } else {
  }
  solo_eeprom_reg_write(solo_dev, 4294967287U);
  return (retval == 0U);
}
}
void *ldv_kmem_cache_alloc_224(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
__inline static void ldv_error(void);
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  return;
}
}
extern struct page___0 *ldv_some_page(void) ;
struct page___0 *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{
  struct page___0 *tmp ;
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  tmp = ldv_some_page();
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin == 0) {
  } else {
    ldv_error();
  }
  return;
}
}
void ldv_spin_lock(void)
{
  {
  ldv_spin = 1;
  return;
}
}
void ldv_spin_unlock(void)
{
  {
  ldv_spin = 0;
  return;
}
}
int ldv_spin_trylock(void)
{
  int is_lock ;
  {
  is_lock = ldv_undef_int();
  if (is_lock) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __copy_to_user_overflow() {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __get_free_pages(gfp_t arg0, unsigned int arg1) {
  return __VERIFIER_nondet_ulong();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool __refrigerator(bool arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int __video_register_device(struct video_device *arg0, int arg1, int arg2, int arg3, struct module *arg4) {
  return __VERIFIER_nondet_int();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void add_wait_queue(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void complete(struct completion *arg0) {
  return;
}
void debug_check_no_locks_held() {
  return;
}
void debug_dma_alloc_coherent(struct device *arg0, size_t arg1, dma_addr_t arg2, void *arg3) {
  return;
}
void debug_dma_free_coherent(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_map_sg(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3, int arg4) {
  return;
}
void debug_dma_mapping_error(struct device *arg0, dma_addr_t arg1) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
void debug_dma_unmap_sg(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_set_name(struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_create_bin_file(struct device *arg0, const struct bin_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_create_file(struct device *arg0, const struct device_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_register(struct device *arg0) {
  return __VERIFIER_nondet_int();
}
void device_unregister(struct device *arg0) {
  return;
}
void *external_alloc(void);
const struct font_desc *find_font(const char *arg0) {
  return (const struct font_desc *)external_alloc();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_pages(unsigned long arg0, unsigned int arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool freezing_slow_path(struct task_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int i2c_add_adapter(struct i2c_adapter *arg0) {
  return __VERIFIER_nondet_int();
}
void i2c_del_adapter(struct i2c_adapter *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int i2c_transfer(struct i2c_adapter *arg0, struct i2c_msg *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int jiffies_to_msecs(const unsigned long arg0) {
  return __VERIFIER_nondet_uint();
}
void *external_alloc(void);
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int kstrtoull(const char *arg0, unsigned int arg1, unsigned long long *arg2) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct task_struct *kthread_create_on_node(int (*arg0)(void *), void *arg1, int arg2, const char *arg3, ...) {
  return (struct task_struct *)external_alloc();
}
bool __VERIFIER_nondet_bool(void);
bool kthread_should_stop() {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int kthread_stop(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void ktime_get_ts(struct timespec *arg0) {
  return;
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_probe_10() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_5() {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct page___0 *ldv_some_page() {
  return (struct page___0 *)external_alloc();
}
void list_del(struct list_head *arg0) {
  return;
}
void might_fault() {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msleep_interruptible(unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int mutex_lock_interruptible_nested(struct mutex *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 arg3) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *pci_ioremap_bar(struct pci_dev *arg0, int arg1) {
  return (void *)external_alloc();
}
void pci_iounmap(struct pci_dev *arg0, void *arg1) {
  return;
}
void pci_release_regions(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_regions(struct pci_dev *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
void prepare_to_wait(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return;
}
void remove_wait_queue(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout_interruptible(long arg0) {
  return __VERIFIER_nondet_long();
}
bool __VERIFIER_nondet_bool(void);
bool set_freezable() {
  return __VERIFIER_nondet_bool();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t sg_copy_from_buffer(struct scatterlist *arg0, unsigned int arg1, void *arg2, size_t arg3) {
  return __VERIFIER_nondet_ulong();
}
void *external_alloc(void);
struct scatterlist *sg_next(struct scatterlist *arg0) {
  return (struct scatterlist *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int snd_card_free(struct snd_card *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_card_new(struct device *arg0, int arg1, const char *arg2, struct module *arg3, int arg4, struct snd_card **arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_card_register(struct snd_card *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_ctl_add(struct snd_card *arg0, struct snd_kcontrol *arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct snd_kcontrol *snd_ctl_new1(const struct snd_kcontrol_new *arg0, void *arg1) {
  return (struct snd_kcontrol *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int snd_device_new(struct snd_card *arg0, enum snd_device_type arg1, void *arg2, struct snd_device_ops *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_pcm_lib_free_pages(struct snd_pcm_substream *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_pcm_lib_ioctl(struct snd_pcm_substream *arg0, unsigned int arg1, void *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_pcm_lib_malloc_pages(struct snd_pcm_substream *arg0, size_t arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_pcm_lib_preallocate_pages_for_all(struct snd_pcm *arg0, int arg1, void *arg2, size_t arg3, size_t arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int snd_pcm_new(struct snd_card *arg0, const char *arg1, int arg2, int arg3, int arg4, struct snd_pcm **arg5) {
  return __VERIFIER_nondet_int();
}
void snd_pcm_period_elapsed(struct snd_pcm_substream *arg0) {
  return;
}
void snd_pcm_set_ops(struct snd_pcm *arg0, int arg1, const struct snd_pcm_ops *arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler *arg0, unsigned int arg1, struct lock_class_key *arg2, const char *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_log_status(struct file *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct v4l2_ctrl *v4l2_ctrl_new_custom(struct v4l2_ctrl_handler *arg0, const struct v4l2_ctrl_config *arg1, void *arg2) {
  return (struct v4l2_ctrl *)external_alloc();
}
void *external_alloc(void);
struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler *arg0, const struct v4l2_ctrl_ops *arg1, u32 arg2, s32 arg3, s32 arg4, u32 arg5, s32 arg6) {
  return (struct v4l2_ctrl *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_subscribe_event(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_device_register(struct device *arg0, struct v4l2_device *arg1) {
  return __VERIFIER_nondet_int();
}
void v4l2_device_unregister(struct v4l2_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_event_unsubscribe(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_fh_open(struct file *arg0) {
  return __VERIFIER_nondet_int();
}
void v4l2_get_timestamp(struct timeval *arg0) {
  return;
}
void vb2_buffer_done(struct vb2_buffer *arg0, enum vb2_buffer_state arg1) {
  return;
}
void vb2_dma_contig_cleanup_ctx(void *arg0) {
  return;
}
void *external_alloc(void);
void *vb2_dma_contig_init_ctx(struct device *arg0) {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int vb2_fop_mmap(struct file *arg0, struct vm_area_struct *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int vb2_fop_poll(struct file *arg0, poll_table *arg1) {
  return __VERIFIER_nondet_uint();
}
long __VERIFIER_nondet_long(void);
ssize_t vb2_fop_read(struct file *arg0, char *arg1, size_t arg2, loff_t *arg3) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int vb2_fop_release(struct file *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_ioctl_dqbuf(struct file *arg0, void *arg1, struct v4l2_buffer *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_ioctl_qbuf(struct file *arg0, void *arg1, struct v4l2_buffer *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_ioctl_querybuf(struct file *arg0, void *arg1, struct v4l2_buffer *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_ioctl_reqbufs(struct file *arg0, void *arg1, struct v4l2_requestbuffers *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_ioctl_streamoff(struct file *arg0, void *arg1, enum v4l2_buf_type arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_ioctl_streamon(struct file *arg0, void *arg1, enum v4l2_buf_type arg2) {
  return __VERIFIER_nondet_int();
}
void vb2_ops_wait_finish(struct vb2_queue *arg0) {
  return;
}
void vb2_ops_wait_prepare(struct vb2_queue *arg0) {
  return;
}
void *external_alloc(void);
void *vb2_plane_cookie(struct vb2_buffer *arg0, unsigned int arg1) {
  return (void *)external_alloc();
}
void *external_alloc(void);
void *vb2_plane_vaddr(struct vb2_buffer *arg0, unsigned int arg1) {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int vb2_queue_init(struct vb2_queue *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct video_device *video_devdata(struct file *arg0) {
  return (struct video_device *)external_alloc();
}
void *external_alloc(void);
struct video_device *video_device_alloc() {
  return (struct video_device *)external_alloc();
}
void video_device_release(struct video_device *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int video_ioctl2(struct file *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_long();
}
void video_unregister_device(struct video_device *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int wait_for_completion_timeout(struct completion *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int wake_up_process(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int default_wake_function(wait_queue_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return __VERIFIER_nondet_int();
}
void *__VERIFIER_external_alloc(void);
void *external_alloc(void) {
  return __VERIFIER_external_alloc();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
