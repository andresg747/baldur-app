import Link from 'next/link'
import { signIn, signOut, useSession } from 'next-auth/react'
import { Button } from 'antd';
import styles from './header.module.css'

// The approach used in this component shows how to build a sign in and sign out
// component that works on pages which support both client and server side
// rendering, and avoids any flash incorrect content on initial page load.
export default function Header() {
  const { data: session, status } = useSession()
  const loading = status === 'loading';

  return (
    <header>
      <noscript>
        <style>{`.nojs-show { opacity: 1; top: 0; }`}</style>
      </noscript>
      <div className={styles.navbarContainer}>
        <nav className={styles.navItemsContainer}>
          <ul className={styles.navItems}>
            <Link href="/">
              <Button className={styles.navItem} type="primary" size="large">
                Home
              </Button>
            </Link>
          </ul>
        </nav>
        <div className={styles.signedInStatus}>
          <p className={`nojs-show ${(!session && loading) ? styles.loading : styles.loaded} ${styles.signIn}`}>
            {!session && <>
              <Link href={`/api/auth/signin`}>
                <Button className={styles.button} type="primary" size="large" onClick={(e) => {
                  e.preventDefault()
                  signIn()
                }}>
                  Iniciar sesión
                </Button>
              </Link>
            </>}
            {session && <>
              {session.user.image && <span style={{ backgroundImage: `url(${session.user.image})` }} className={styles.avatar} />}
              <span className={styles.signedInText}>
                <strong>{session.user.name}</strong>
              </span>

              <Link href={`/api/auth/signout`}>
                <Button className={styles.button} type="primary" size="large" onClick={(e) => {
                  e.preventDefault()
                  signOut()
                }}>
                  Salir
                </Button>
              </Link>
            </>}
          </p>
        </div>
      </div>
    </header>
  )
}
